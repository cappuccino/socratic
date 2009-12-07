
@import <Foundation/CPObject.j>


@implementation TMSourceParser : CPObject
{
    id  delegate @accessors;
}

- (void)parseContentsOfURL:(CPURL)aURL
{
    [self parseString:FILE.read(absolutePath, { charset : "UTF-8" })
              grammar:[TMLanguageGrammar grammarForFileAtURL:aURL]];
}

- (void)parseString:(CPString)aString grammar:(TMLanguageGrammar)aGrammar
{
    var absolutePath = [aURL absoluteString];

    if ([delegate respondsToSelector:@selector(parserDidStartDocument:)])
        [delegate parserDidStartDocument:self];

    aString.split('\n').forEach(function(/*CPString*/ aLine)
    {
        [self parseLine:aLine grammar:aGrammar];
    });

    if ([delegate respondsToSelector:@selector(parserDidEndDocument:)])
        [delegate parserDidEndDocument:self];
}

- (void)parseLine:(CPString)aLine grammar:(TMLanguageGrammar)aGrammar
{
/*
     processor.new_line line if processor
     top, match = stack.last
     position = 0
     #@ln ||= 0
     #@ln += 1
     #STDERR.puts @ln
    while(true)
    {
        if [rule patterns]
           pattern, pattern_match = top.match_first_son line, position
        else
           pattern, pattern_match = nil

        end_match = nil

        if ([top end])
           end_match = top.match_end( line, match, position )

        if end_match && ( ! pattern_match || pattern_match.offset.first >= end_match.offset.first )
           pattern_match = end_match
           start_pos = pattern_match.offset.first
           end_pos = pattern_match.offset.last
           processor.close_tag top.contentName, start_pos if top.contentName && processor
           parse_captures "captures", top, pattern_match, processor if processor
           parse_captures "endCaptures", top, pattern_match, processor if processor
           processor.close_tag top.name, end_pos if top.name && processor
           stack.pop
           top, match = stack.last
        else
           break unless pattern
           start_pos = pattern_match.offset.first
           end_pos = pattern_match.offset.last
           if pattern.begin
              processor.open_tag pattern.name, start_pos if pattern.name && processor
              parse_captures "captures", pattern, pattern_match, processor if processor
              parse_captures "beginCaptures", pattern, pattern_match, processor if processor
              processor.open_tag pattern.contentName, end_pos if pattern.contentName && processor
              top = pattern
              match = pattern_match
              stack << [top, match]
           elsif pattern.match
              processor.open_tag pattern.name, start_pos if pattern.name && processor
              parse_captures "captures", pattern, pattern_match, processor if processor
              processor.close_tag pattern.name, end_pos if pattern.name && processor
           end
        end
        position = end_pos
     end
  end
end
*/
}

@end
