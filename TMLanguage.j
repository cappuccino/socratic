
@import <Foundation/CPObject.j>

@import "TMSyntaxDefinition.j"


var PLIST = require("objective-j/plist");


var Languages               = nil,
    LanguagesForFileTypes   = nil;

@implementation TMLanguage : TMSyntaxDefinition
{
    CPString    name @accessors(readonly);
    CPSet       fileTypes @accessors(readonly);

    CPString    scopeName @accessors(readonly);
    CPString    UUID @accessors(readonly);

    RegExp      firstLineMatch @accessors(readonly);
    RegExp      foldingStartMarker @accessors(readonly);
    RegExp      foldingStopMarker @accessors(readonly);
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
    while ((firstLine = file.readLine()).trim().length === 0) ;

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

- (id)initWithDictionary:(CPDictionary)aDictionary
{
    self = [super initWithDictionary:aDictionary];

    if (self)
    {
        name = [aDictionary objectForKey:@"name"];

        fileTypes = [CPSet setWithArray:[aDictionary objectForKey:"fileTypes"]];

        scopeName = [aDictionary objectForKey:@"scopeName"];
        UUID = [aDictionary objectForKey:@"uuid"];

        firstLineMatch = [aDictionary objectForKey:"firstLineMatch"] && new RegExp(firstLineMatch);
        foldingStartMarker  = [aDictionary objectForKey:"foldingStartMarker"] && new RegExp(foldingStartMarker);
        foldingStopMarker = [aDictionary objectForKey:"foldingStopMarker"] && new RegExp(foldingStopMarker);

        [TMLanguage _registerLanguage:self forFileTypes:fileTypes];
    }

    return self;
}

- (id)initWithContentsOfURL:(CPURL)aURL
{
    return [self initWithDictionary:PLIST.readPlist([aURL absoluteString])];
}

@end
