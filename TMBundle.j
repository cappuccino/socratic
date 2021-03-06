
@import "TMLanguageGrammar.j"


var FILE = require("file"),
    FileList = require ("jake/filelist").FileList,
    PLIST = require("objective-j/plist");


var BundlesForUUIDs;

@implementation TMBundle : CPObject
{
    CPString    UUID @accessors(readonly);
    CPString    URL @accessors(readonly);
    CPSet       grammars @accessors(readonly);
}

+ (void)initialize
{
    if (self !== [TMBundle class])
        return;

    BundlesForUUIDs = [CPDictionary dictionary];
}

+ (CPArray)allBundles
{
    return [BundlesForUUIDs allValues];
}

+ (void)loadBundlesLocatedInDirectoryAtURL:(CPURL)aURL
{
    new FileList([aURL absoluteString] + "/**/*.tmbundle").forEach(function(aFilePath)
    {
        [[TMBundle alloc] initWithContentsOfURL:[CPURL URLWithString:aFilePath]];
    });
}

- (id)initWithContentsOfURL:(CPURL)aURL
{
    self = [super init];

    if (self)
    {
        var absolutePath = [aURL absoluteString],
            infoPlist = PLIST.readPlist(FILE.join(absolutePath, "Info.plist")),
            UUID = [infoPlist objectForKey:@"uuid"],
            existingBundle = [BundlesForUUIDs objectForKey:UUID];

        if (existingBundle)
            return existingBundle;

        [BundlesForUUIDs setObject:self forKey:UUID];

        URL = aURL;
        grammars = [CPSet set];

        var syntaxesPath =  absolutePath + "/Syntaxes/**/*",
            grammarFiles = new FileList(syntaxesPath + ".tmLanguage").include(syntaxesPath + ".tmSyntax");

        grammarFiles.forEach(function(aFilePath)
        {
            [grammars addObject:[[TMLanguageGrammar alloc] initWithContentsOfURL:[CPURL URLWithString:aFilePath]]];
        });
    }

    return self;
}

- (void)description
{
    return  [super description] +
            "\n\tUUID: " + UUID +
            "\n\tgrammars: " + [[grammars allObjects] description].split('\n').join("\n\t");
}

@end
