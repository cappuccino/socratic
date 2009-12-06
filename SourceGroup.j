
@import <Foundation/Foundation.j>

@import "TMSourceParser.j"


var DOM = require("browser/dom");

@implementation SourceGroup : CPObject
{
    FileList    fileList;
    DOMDocument sourcesDocument;
    CPArray     nodeStack;
}

- (id)initWithFiles:(FileList)aFileList
{
    self = [super init];

    if (self)
    {
        fileList = aFileList;
        sourcesDocument = DOM.createDocument(null, "sources", null);
        nodeStack = [sourcesDocument];

        var parser = [[TMSourceParser alloc] init];

        [parser setDelegate:self];

        fileList.forEach(function(/*String*/ aFilePath)
        {
            var fileElement = sourcesDocument.createElement("", "file");

            fileElement.setAttributeNS("", "path", aFilePath);

            sourcesDocument.appendChild(fileElement);
            nodeStack.push(fileElement);

            [parser parseContentsOfURL:[CPURL URLWithString:aFilePath]];

            nodeStack.pop();
        });
    }

    return self;
}

- (void)parserDidStartDocument:(TMSourceParser)aParser
{
}

- (void)parser:(TMSourceParser)aParser didStartScope:(CPString)aScopeName
{
    var element = sourcesDocument.createElementNS("", aScopeName);

    [nodeStack lastObject].appendChild(element);
    nodeStack.push(element);
}

- (void)parser:(TMSourceParser)aParser didEndScope:(CPString)aScopeName
{
    nodeStack.pop();
}

- (void)parser:(TMSourceParser)aParser foundString:(CPString)aString
{
    [nodeStack lastObject].appendChild(sourcesDocument.createTextNode(aString));
}

@end
