
@import <Foundation/Foundation.j>


var DOM = require("browser/dom");

@implementation SourceGroup : CPObject
{
    FileList    fileList;
    DOMDocument sourcesDocument;
}

- (id)initWithFiles:(FileList)aFileList
{
    self = [super init];

    if (self)
    {
        fileList = aFileList;
        sourcesDocument = DOM.createDocument(null, "sources", null);
        
        fileList.forEach(function(aFile)
        {
            print(aFile);
        });
    }

    return self;
}

@end
