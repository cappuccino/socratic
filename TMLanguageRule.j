
@import <Foundation/CPArray.j>
@import <Foundation/CPDictionary.j>
@import <Foundation/CPObject.j>
@import <Foundation/CPString.j>

@import "TMLanguageRuleReference.j"


@implementation TMLanguageRule : CPObject
{
    TMLanguageGrammar   grammar;

    CPString            name @accessors(readonly);
    CPString            contentName @accessors(readonly);
    CPDictionary        captures @accessors(readonly);
    CPDictionary        beginCaptures @accessors(readonly);
    CPDictionary        endCaptures @accessors(readonly);

    RegExp              match @accessors(readonly);
    RegExp              begin @accessors(readonly);
    RegExp              end @accessors(readonly);

    CPArray             rules @accessors(readonly);
}

+ (id)ruleWithDictionary:(CPDictionary)aDictionary grammar:(TMLanguageGrammar)aGrammar
{
    return [[self alloc] initWithDictionary:aDictionary grammar:aGrammar];
}

- (id)initWithDictionary:(CPDictionary)aDictionary grammar:(TMLanguageGrammar)aGrammar
{
    self = [super init];

    if (self)
    {
        var referenceName = [aDictionary objectForKey:@"include"];

        if ([referenceName length])
            return [[TMLanguageRuleReference alloc] initWithReferenceName:referenceName grammar:aGrammar];

        name = [[aDictionary objectForKey:@"name"] stringByTrimmingWhitespace];
        contentName = [[aDictionary objectForKey:@"contentName"] stringByTrimmingWhitespace];
        captures = [aDictionary objectForKey:@"captures"];
        beginCaptures = [aDictionary objectForKey:@"beginCaptures"];
        endCaptures = [aDictionary objectForKey:@"endCaptures"];

        match = RegExpOrNil([aDictionary objectForKey:"match"]);
        begin = RegExpOrNil([aDictionary objectForKey:"begin"]);
        end = RegExpOrNil([aDictionary objectForKey:"end"]);

        grammar = aGrammar;
        rules = [[aDictionary objectForKey:@"patterns"] toLanguageRulesArrayWithGrammar:aGrammar];
    }

    return self;
}

- (void)description
{
    return  [super description] + 
            (name ? "\n\tname: " + name : "") +
            (contentName ? "\n\tcontentName: " + contentName : "") + 
            (rules ? "\n\trules: " + [rules description].split('\n').join("\n\t") : "");
}

/*
- ()matchFirstSon position:
{
    var rules = [self rules];

    // This handles the n
    if (!rules)
        return;

    var match = nil,
        index = 0,
        count = [rules count];

    for (; index < count; ++index)
    {
        var rule = rules[index],
            submatch = [rule matchFirst:aString position:aPosition];

        if (submatch)
        {
            if (!match || match[1].offset.first > submatch[1].offset.first)
                match = submatch;

            // if (tmatch[1].offset.first == position)
            //    break;
        }
    }

    return match;
}


//      def match_first string, position
- (void)matchFirst: position:
{
    var pattern = nil,
        match = nil;

    if ((pattern = [self match]) && (match = pattern.match(string, position)))
        return [self, match];

    else if ((pattern = [self begin]) && (match = pattern.match(string, position)))
        return [self, match];

    else if ([self end])
    {
    }

    else
        return [self matchFirstSon:string,position];

    return nil;
}
*/

@end

function RegExpOrNil(/*CPString*/ aString)
{try{
    return aString ? new RegExp(aString) : nil;}catch(e) { print("ABD FOR: " + aString + e); }
}

@implementation CPArray (TMLanguageRuleAdditions)

- (CPArray)toLanguageRulesArrayWithGrammar:(TMLanguageGrammar)aGrammar
{
    return self.map(function(/*CPDictionary*/ aDictionary)
    {
        return [TMLanguageRule ruleWithDictionary:aDictionary grammar:aGrammar];
    });
}

@end

@implementation CPDictionary (TMLanguageRuleAdditions)

- (CPDictionary)toLanguageRulesDictionaryWithGrammar:(TMLanguageGrammar)aGrammar
{
    var dictionary = [CPDictionary dictionary],
        key = nil,
        keyEnumerator = [self keyEnumerator];

    while (key = [keyEnumerator nextObject])
        [dictionary setObject:[TMLanguageRule ruleWithDictionary:[self objectForKey:key] grammar:aGrammar] forKey:key];

    return dictionary;
}

@end
