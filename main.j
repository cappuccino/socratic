
@import "SourceGroup.j"
@import "TMBundle.j"


var URI     = require("uri").URI,
//    HTTP    = require("http"),
    FILE        = require("file"),
    JACK        = require("jack"),
    JAKE        = require("jake"),
    OS          = require("os");

[TMBundle loadBundlesLocatedInDirectoryAtURL:[CPURL URLWithString:@"Bundles"]];
//s = [[SourceGroup alloc] initWithFiles:new JAKE.FileList("AppKit/**.j")];

[TMBundle allBundles].forEach(function(aBundle)
{
    print(aBundle);
})

new JAKE.FileList("AppKit/**.j").forEach(function(aFilePath)
{
    print("will use " + [[TMLanguageGrammar grammarForFileType:FILE.extension(aFilePath)] name] + " for " + aFilePath);
});

// FIXME: exports.app isn't the way to go anymore?
/*exports.app = JACK.URLMap(
{
    "/" : function(env)
    {
        var request = new JACK.Request(env),
            response = new JACK.Response();

        response.write("hello");

        return response.finish();
    }
});*/
