/*
 * ThemeDescriptors.j
 * Classic
 *
 * Created by __Me__ on __Date__.
 * Copyright 2008 __MyCompanyName__. All rights reserved.
 */

@import <Foundation/CPObject.j>


@implementation ClassicThemeDescriptor : CPObject
{
}

+ (CPString)themeName
{
    return @"Classic";
}

+ (CPTextField)themedTextField
{
    var textField = [[CPTextField alloc] initWithFrame:CGRectMake(0.0, 0.0, 200.0, 20.0)];
    
    [textField setValue:[CPColor blueColor] forThemedAttributeName:@"bezel-color"];
    [textField setValue:[CPColor redColor] forThemedAttributeName:@"text-color"];
    
    [textField setStringValue:@"Yikes!"];
    
    return textField;
}

+ (CPSlider)themedHorizontalSlider
{
    var textField = [[CPSlider alloc] initWithFrame:CGRectMake(0.0, 0.0, 200.0, 20.0)];
    
    
    return textField;
}

+ (CPSlider)themedVerticalSlider
{
    var textField = [[CPSlider alloc] initWithFrame:CGRectMake(0.0, 0.0, 20.0, 200.0)];
    
    
    return textField;
}

@end
