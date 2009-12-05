
@import <Foundation/CPObject.j>


@implementation TMSyntaxDefinition : CPObject
{
    CPString        name @accessors(readonly);
    CPString        contentName @accessors(readonly);
    CPDictionary    captures @accessors(readonly);
    CPDictionary    beginCaptures @accessors(readonly);
    CPDictionary    endCaptures @accessors(readonly);

    RegExp          match @accessors(readonly);
    RegExp          begin @accessors(readonly);
    CPString        end @accessors(readonly);

    CPArray         patterns @accessors(readonly);
    CPDictionary    repository @accessors(readonly);
}

+ (id)syntaxWithDictionary:(CPDictionary)aDictionary
{
    return [[TMSyntaxDefinition alloc] initWithDictionary:aDictionary];
}

- (id)initWithDictionary:(CPDictionary)aDictionary
{
    self = [super init];

    if (self)
    {
        name = [aDictionary objectForKey:@"name"];
        contentName = [aDictionary objectForKey:@"contentName"];
        captures = [aDictionary objectForKey:@"captures"];
        beginCaptures = [aDictionary objectForKey:@"beginCaptures"];
        endCaptures = [aDictionary objectForKey:@"endCaptures"];
        end = [aDictionary objectForKey:@"end"];

        match = [dictionary objectForKey:"match"];

        if (match) 
            match = new RegExp(match);

        begin = [dictionary objectForKey:"begin"];

        if (begin)
            begin = new RegExp(begin);

        patterns = [aDictionary objectForKey:@"patterns"];

        if (patterns)
            patterns.map(function(/*CPDictionary*/ aDictionary)
            {
                if ([aDictionary objectForKey:@"include"])
                    return [TMSyntaxDefinition syntaxWithDictionary:aDictionary];
                else
                    return [TMSyntaxDefinition syntaxWithDictionary:aDictionary];
            });

        var unprocessed = [aDictionary objectForKey:@"repository"],
            key = nil,
            keyEnumerator = [repository keyEnumerator];

        repository = [CPDictionary dictionary];

        while (key = [keyEnumerator nextObject])
        {
            var dictionary = [unprocessed objectForKey:key];
        
            if ([dictionary objectForKey:@"include"])
                [repository setObject:[TMSyntaxDefinition syntaxWithDictionary:dictionary] forKey:key];
            else
                [repository setObject:[TMSyntaxDefinition syntaxWithDictionary:dictionary] forKey:key];
        }
    }

    return self;
}

- (CPString)description
{
    return  [super description] + '\n' +
            (name ? "\tname: " + name : "") +
            (contentName ? "\tcontentName: " + contentName : "");
}

@end
