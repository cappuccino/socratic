
@import <Foundation/CPObject.j>


@implementation TMSourceParser : CPObject
{
    id  delegate @accessors;
}

- (void)parseContentsOfURL:(CPURL)aURL
{
    [self parseString:FILE.read(absolutePath, { charset : "UTF-8" })
             language:[TMLanguage languageForFileAtURL:aURL]];
}

- (void)parseString:(CPString)aString
{
    var absolutePath = [aURL absoluteString];

    if ([delegate respondsToSelector:@selector(parserDidStartDocument:)])
        [delegate parserDidStartDocument:self];



    if ([delegate respondsToSelector:@selector(parserDidEndDocument:)])
        [delegate parserDidEndDocument:self];
}

@end
