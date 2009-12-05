
@import <Foundation/CPObject.j>


var PLIST = require("objective-j/plist");

var Languages               = nil,
    LanguagesForFileTypes   = nil;

@implementation TMLanguage : CPObject
{
    CPString    name @accessors(readonly);
    CPSet       fileTypes @accessors(readonly);

    RegExp      firstLineMatch @accessors(readonly);
    RegExp      foldingStartMarker @accessors(readonly);
    RegExp      foldingStopMarker @accessors(readonly);
    RegExp      match @accessors(readonly);
    RegExp      begin @accessors(readonly);
}

+ (TMLanguage)languageForFileAtURL:(CPURL)aURL
{
    // Check the file type.
    var absolutePath = [aURL absoluteString],
        langauge = [self languageForFileType:FILE.extension(absolutePath)];

    if (language)
        return language;

    // If not check the first line.
    var file = FILE.open(absolutePath, { charset: "UTF-8" }),
        firstLine = nil;

    // Skip space lines.
    while ((firstLine = file.readLine()).replace(/^\s+/, '').replace(/\s+$/, '')[1].length === 0) ;

    if (!firstLine)
        return nil;

    var languageEnumerator = [Languages objectEnumerator];

    while (language = [languageEnumerator nextObject])
        if (firstLine.match([langauge firstLineMatch]))
            return language;

    return nil;
}

+ (TMLanguage)languageForFileType:(CPString)aFileType
{
    if (aFileType.charAt(0) === '.')
        aFileType = aFileType.substr(1);

    return [LanguagesForFileTypes objectForKey:aFileType];
}

+ (void)_registerLanguage:(TMLanguage)aLanguage forFileTypes:(CPSet)fileTypes
{
    if (!LanguagesForFileTypes)
        LanguagesForFileTypes = [CPDictionary dictionary];

    var fileType = nil,
        fileTypeEnumerator = [fileTypes objectEnumerator];

    while (fileType = [fileTypeEnumerator nextObject])
        [LanguagesForFileTypes setObject:aLanguage forKey:fileType];
}

- (id)initWithURL:(CPURL)aURL
{
    self = [super init];

    if (self)
    {
        var dictionary = PLIST.readPlist([aURL absoluteString]);

        name = [dictionary objectForKey:@"name"];

        fileTypes = [CPSet setWithArray:[dictionary objectForKey:"fileTypes"]];

        firstLineMatch = [dictionary objectForKey:"firstLineMatch"] && new RegExp(firstLineMatch);
        foldingStartMarker  = [dictionary objectForKey:"foldingStartMarker"] && new RegExp(foldingStartMarker);
        foldingStopMarker = [dictionary objectForKey:"foldingStopMarker"] && new RegExp(foldingStopMarker);
        match = [dictionary objectForKey:"match"] && new RegExp(match);
        begin = [dictionary objectForKey:"begin"] && new RegExp(begin);

        [TMLanguage _registerLanguage:self forFileTypes:fileTypes];
    }

    return self;
}

@end
