
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

new JAKE.FileList("AppKit/**.j").forEach(function(aFilePath)
{
    print("will use " + [[TMLanguage languageForFileType:FILE.extension(aFilePath)] name] + " for " + aFilePath);
});

exports.app = JACK.URLMap(
{
    "/" : function(env)
    {
        var request = new JACK.Request(env),
            response = new JACK.Response();

        response.write("hello");

        return response.finish();
    }
});
