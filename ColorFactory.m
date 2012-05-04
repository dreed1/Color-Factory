//
//  ColorFactory.m
//
//  Created by Dan Reed on 3/31/12.
//  Copyright (c) 2012 danreed.net. All rights reserved.
//

/*
* ---------------------------------------------------------------------------- 
* "BEER-WARE LICENSE":
* <dan@danreed.net> wrote this class. As long as you retain this notice you
* can do whatever you want with this stuff. If we meet some day (and you think
* this stuff is worth it) you can buy me a beer in return --Dan Reed
* ----------------------------------------------------------------------------
*/

#import "ColorFactory.h"

@implementation ColorFactory

@synthesize primary;
@synthesize secondary;

@synthesize primaryShadow;
@synthesize secondaryShadow;

@synthesize primaryBold;
@synthesize secondaryBold;

@synthesize primaryLight;
@synthesize secondaryLight;

@synthesize primaryHighlight;
@synthesize secondaryHighlight;

+(ColorFactory *)sharedFactory {
    static dispatch_once_t pred;
    static ColorFactory *shared = nil;
    
    dispatch_once(&pred, ^{
        shared = [[ColorFactory alloc] init];
    });
    return shared;
}

-(ColorFactory *)init{
    self = [super init];
    if(self){
        //init global colors here
        primary = [UIColor colorFromHex:PRIMARY_COLOR];
        secondary = [UIColor colorFromHex:SECONDARY_COLOR];
        
        primaryShadow = [UIColor colorFromHex:PRIMARY_SHADOW_COLOR];
        secondaryShadow = [UIColor colorFromHex:SECONDARY_SHADOW_COLOR];
        
        primaryBold = [UIColor colorFromHex:PRIMARY_BOLD_COLOR];
        secondaryBold = [UIColor colorFromHex:SECONDARY_BOLD_COLOR];
        
        primaryLight = [UIColor colorFromHex:PRIMARY_LIGHT_COLOR];
        secondaryLight = [UIColor colorFromHex:SECONDARY_LIGHT_COLOR];
        
        primaryHighlight = [UIColor colorFromHex:PRIMARY_HIGHLIGHT_COLOR];
        secondaryHighlight = [UIColor colorFromHex:SECONDARY_HIGHLIGHT_COLOR];
    }
    return self;
}

@end

@implementation UIColor (ColorFromHex)

+ (UIColor *) colorFromHex:(NSString *)hex {
    
    NSString *colorString = [[hex uppercaseString] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] ;  
    if ([colorString length] < 6) 
        return [UIColor grayColor];  
    
    if ([colorString hasPrefix:@"0X"]) 
        colorString = [colorString substringFromIndex:2];  
    else if ([colorString hasPrefix:@"#"]) 
        colorString = [colorString substringFromIndex:1]; 
    else if ([colorString length] != 6) 
        return  [UIColor grayColor];  
    
    NSRange range;  
    range.location = 0;  
    range.length = 2;  
    NSString *rString = [colorString substringWithRange:range];  
    range.location += 2;  
    NSString *gString = [colorString substringWithRange:range];  
    range.location += 2;  
    NSString *bString = [colorString substringWithRange:range];  

    unsigned int red, green, blue;  
    [[NSScanner scannerWithString:rString] scanHexInt:&red];  
    [[NSScanner scannerWithString:gString] scanHexInt:&green];  
    [[NSScanner scannerWithString:bString] scanHexInt:&blue];  
    
    return [UIColor colorWithRed:((float) red / 255.0f)  
                           green:((float) green / 255.0f)  
                            blue:((float) blue / 255.0f)  
                           alpha:1.0f];  
} 

+ (UIColor *) colorFromHex:(NSString *)hex withAlpha:(float)alphaValue{
    float theAlpha = alphaValue;
	if(theAlpha > 1.0f)
        theAlpha = 1.0f;
    
    NSString *colorString = [[hex uppercaseString] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] ;  
    if ([colorString length] < 6) 
        return [UIColor grayColor];  
    
    if ([colorString hasPrefix:@"0X"]) 
        colorString = [colorString substringFromIndex:2];  
    else if ([colorString hasPrefix:@"#"]) 
        colorString = [colorString substringFromIndex:1]; 
    else if ([colorString length] != 6) 
        return  [UIColor grayColor];  
    
    NSRange range;  
    range.location = 0;  
    range.length = 2;  
    NSString *rString = [colorString substringWithRange:range];  
    range.location += 2;  
    NSString *gString = [colorString substringWithRange:range];  
    range.location += 2;  
    NSString *bString = [colorString substringWithRange:range];  
    
    unsigned int red, green, blue;  
    [[NSScanner scannerWithString:rString] scanHexInt:&red];  
    [[NSScanner scannerWithString:gString] scanHexInt:&green];  
    [[NSScanner scannerWithString:bString] scanHexInt:&blue];  
    
    return [UIColor colorWithRed:((float) red / 255.0f)  
                           green:((float) green / 255.0f)  
                            blue:((float) blue / 255.0f)  
                           alpha:theAlpha];  
}

@end
