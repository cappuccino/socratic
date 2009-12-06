
@import <Foundation/CPObject.j>

@import "TMLanguageRule.j"


var PLIST = require("objective-j/plist");


var Grammars                = nil,
    GrammarsForFileTypes    = nil;

@implementation TMLanguageGrammar : CPObject
{
    CPString    name @accessors(readonly);
    CPSet       fileTypes @accessors(readonly);

    CPString    scopeName @accessors(readonly);
    CPString    UUID @accessors(readonly);

    RegExp      firstLineMatch @accessors(readonly);
    RegExp      foldingStartMarker @accessors(readonly);
    RegExp      foldingStopMarker @accessors(readonly);

    CPArray     rules @accessors(readonly);
}

+ (TMLanguageGrammar)grammarForFileAtURL:(CPURL)aURL
{
    // Check the file type.
    var absolutePath = [aURL absoluteString],
        grammar = [self grammarForFileType:FILE.extension(absolutePath)];

    if (grammar)
        return grammar;

    // If not check the first line.
    var file = FILE.open(absolutePath, { charset: "UTF-8" }),
        firstLine = nil;

    // Skip space lines.
    while ((firstLine = file.readLine()).trim().length === 0) ;

    if (!firstLine)
        return nil;

    var grammarEnumerator = [grammars objectEnumerator];

    while (grammar = [grammarEnumerator nextObject])
        if (firstLine.match([grammar firstLineMatch]))
            return grammar;

    return nil;
}

+ (TMLanguageGrammar)grammarForFileType:(CPString)aFileType
{
    if (aFileType.charAt(0) === '.')
        aFileType = aFileType.substr(1);

    return [GrammarsForFileTypes objectForKey:aFileType];
}

+ (void)_registerGrammar:(TMLanguageGrammar)aGrammar forFileTypes:(CPSet)fileTypes
{
    if (!GrammarsForFileTypes)
        GrammarsForFileTypes = [CPDictionary dictionary];

    var fileType = nil,
        fileTypeEnumerator = [fileTypes objectEnumerator];

    while (fileType = [fileTypeEnumerator nextObject])
        [GrammarsForFileTypes setObject:aGrammar forKey:fileType];
}

- (id)initWithDictionary:(CPDictionary)aDictionary
{
    self = [super init];

    if (self)
    {
        name = [aDictionary objectForKey:@"name"];

        fileTypes = [CPSet setWithArray:[aDictionary objectForKey:"fileTypes"]];

        scopeName = [aDictionary objectForKey:@"scopeName"];
        UUID = [aDictionary objectForKey:@"uuid"];

        firstLineMatch = RegExpOrNil([aDictionary objectForKey:"firstLineMatch"]);
        foldingStartMarker = RegExpOrNil([aDictionary objectForKey:"foldingStartMarker"]);
        foldingStopMarker = RegExpOrNil([aDictionary objectForKey:"foldingStopMarker"]);

        rules = [[aDictionary objectForKey:@"patterns"] toLanguageRulesArrayWithGrammar:self];

        [TMLanguageGrammar _registerGrammar:self forFileTypes:fileTypes];
    }

    return self;
}

- (id)initWithContentsOfURL:(CPURL)aURL
{
    return [self initWithDictionary:PLIST.readPlist([aURL absoluteString])];
}

- (void)description
{
    return  [super description] + 
            (name ? "\n\tname: " + name : "") +
            (scopeName ? "\n\tscopeName: " + scopeName : "") + 
            (rules ? "\n\trules: " + [rules description].split('\n').join("\n\t") : "");
}

@end
