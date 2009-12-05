
@import "TMLanguage.j"


var FILE = require("file"),
    FileList = require ("jake/filelist").FileList;


var Bundles;

@implementation TMBundle : CPObject
{
    CPString    URL @accessors(readonly);
    CPSet       languages @accessors(readonly);
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
        URL = aURL;
        languages = [CPSet set];

        var syntaxesPath = [aURL absoluteString] + "/Syntaxes/**/*",
            languageFiles = new FileList(syntaxesPath + ".tmLanguage").include(syntaxesPath + ".tmSyntax");

        languageFiles.forEach(function(aFilePath)
        {
            [languages addObject:[[TMLanguage alloc] initWithContentsOfURL:[CPURL URLWithString:aFilePath]]];
        });
    }

    return self;
}

@end
