
@import <Foundation/CPObject.j>

@import "TMLanguageRule.j"


var PLIST = require("objective-j/plist");


var GrammarsForFileTypes    = nil,
    GrammarsForScopeNames   = nil;

@implementation TMLanguageGrammar : CPObject
{
    CPString        name @accessors(readonly);
    CPSet           fileTypes @accessors(readonly);

    CPString        scopeName @accessors(readonly);
    CPString        UUID @accessors(readonly);

    RegExp          firstLineMatch @accessors(readonly);
    RegExp          foldingStartMarker @accessors(readonly);
    RegExp          foldingStopMarker @accessors(readonly);

    TMLanguageRule  baseRule @accessors(readonly);
    CPDictionary    repository @accessors(readonly);
}

+ (void)initialize
{
    if (self !== [TMLanguageGrammar class])
        return;

    GrammarsForFileTypes = [CPDictionary dictionary];
    GrammarsForScopeNames = [CPDictionary dictionary];
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

+ (TMLanguageGrammar)grammarWithScopeName:(CPString)aScopeName
{
    return [GrammarsForScopeNames objectForKey:aScopeName];
}

+ (void)_registerGrammar:(TMLanguageGrammar)aGrammar
{
    [GrammarsForScopeNames setObject:aGrammar forKey:[aGrammar scopeName]];

    var fileType = nil,
        fileTypeEnumerator = [[aGrammar fileTypes] objectEnumerator];

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

        baseRule = [TMLanguageRule ruleWithDictionary:aDictionary grammar:self];
        repository = [[aDictionary objectForKey:@"repository"] toLanguageRulesDictionaryWithGrammar:self];

        [TMLanguageGrammar _registerGrammar:self];
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
            (baseRule ? "\n\trule: " + [baseRule description].split('\n').join("\n\t") : "");
}

@end
