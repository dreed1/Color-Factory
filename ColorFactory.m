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
@synthesize tertiary;

@synthesize primaryShadow;
@synthesize secondaryShadow;
@synthesize tertiaryShadow;

@synthesize primaryBold;
@synthesize secondaryBold;
@synthesize tertiaryBold;

@synthesize primaryLight;
@synthesize secondaryLight;
@synthesize tertiaryLight;

@synthesize primaryHighlight;
@synthesize secondaryHighlight;
@synthesize tertiaryHighlight;

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
        primary = [ColorFactory colorFromHex:PRIMARY_COLOR];
        secondary = [ColorFactory colorFromHex:SECONDARY_COLOR];
        tertiary = [ColorFactory colorFromHex:TERTIARY_COLOR];
        
        primaryShadow = [ColorFactory colorFromHex:PRIMARY_SHADOW_COLOR];
        secondaryShadow = [ColorFactory colorFromHex:SECONDARY_SHADOW_COLOR];
        tertiaryShadow = [ColorFactory colorFromHex:TERTIARY_SHADOW_COLOR];
        
        primaryBold = [ColorFactory colorFromHex:PRIMARY_BOLD_COLOR];
        secondaryBold = [ColorFactory colorFromHex:SECONDARY_BOLD_COLOR];
        tertiaryBold = [ColorFactory colorFromHex:TERTIARY_BOLD_COLOR];
        
        primaryLight = [ColorFactory colorFromHex:PRIMARY_LIGHT_COLOR];
        secondaryLight = [ColorFactory colorFromHex:SECONDARY_LIGHT_COLOR];
        tertiaryLight = [ColorFactory colorFromHex:TERTIARY_LIGHT_COLOR];
        
        primaryHighlight = [ColorFactory colorFromHex:PRIMARY_HIGHLIGHT_COLOR];
        secondaryHighlight = [ColorFactory colorFromHex:SECONDARY_HIGHLIGHT_COLOR];
        tertiaryHighlight = [ColorFactory colorFromHex:TERTIARY_HIGHLIGHT_COLOR];
    }
    return self;
}

+ (UIColor *) colorFromHex:(NSString *)hex {
    
    NSString *colorString = [[hex uppercaseString] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] ;  
    if ([colorString length] < 6) return [UIColor grayColor];  
    
    if ([colorString hasPrefix:@"0X"]) colorString = [colorString substringFromIndex:2];  
    if ([colorString hasPrefix:@"#"]) colorString = [colorString substringFromIndex:1]; 
    if ([colorString length] != 6) return  [UIColor grayColor];  
    
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

+ (UIColor *) colorFromHexWithAlpha:(NSString *)hex:(float)alphaValue{
	NSString *colorString = [[hex uppercaseString] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] ;  
    if ([colorString length] < 6) return [UIColor grayColor];  
    
    if ([colorString hasPrefix:@"0X"]) colorString = [colorString substringFromIndex:2];  
    if ([colorString hasPrefix:@"#"]) colorString = [colorString substringFromIndex:1]; 
    if ([colorString length] != 6) return  [UIColor grayColor];  
    
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
                           alpha:alphaValue];
}

+ (UIColor *) colorFromRGB:(int)red:(int)green:(int)blue{
    return [UIColor colorWithRed:((float) red / 255.0f)  
                           green:((float) green / 255.0f)  
                            blue:((float) blue / 255.0f)  
                           alpha:1.0f];  
}

+ (UIColor *) colorFromRGBA:(int)red:(int)green:(int)blue:(float)alpha{
    return [UIColor colorWithRed:((float) red / 255.0f)  
                           green:((float) green / 255.0f)  
                            blue:((float) blue / 255.0f)  
                           alpha:alpha];  
}

@end
