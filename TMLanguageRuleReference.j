
@implementation TMLanguageRuleReference : CPObject
{
    TMLanguageRule      rule;
    CPString            referenceName @accessors(readonly);
    TMLanguageGrammar   grammar @accessors(readonly);
}

- (id)initWithReferenceName:(CPString)aReferenceName grammar:(TMLanguageGrammar)aGrammar
{
    self = [super init];

    if (self)
    {
        referenceName = aReferenceName;
        grammar = aGrammar;
    }

    return self;
}

- (id)rule
{
    if (!rule)
    {
        if (referenceName === @"$self" || referenceName === @"$base")
            rule = grammar;

        else if (referenceName.charAt(0) === "#")
            rule = [[grammar repository] objectForKey:referenceName.substr(1)];

        else
            rule = [TMLanguageGrammar grammarWithScopeName:referenceName];
    }

    return rule;
}

-(CPMethodSignature)methodSignatureForSelector:(SEL)aSelector
{
    if ([[self rule] respondsToSelector:aSelector])
        return 1;

    return nil;//[_preparedTarget methodSignatureForSelector:selector];
}

- (void)forwardInvocation:(CPInvocation)anInvocation
{
    [anInvocation invokeWithTarget:[self rule]];
}

- (void)description
{
    return [super description] + " (" + referenceName + ")";
}

@end
