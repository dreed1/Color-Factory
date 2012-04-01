//
//  ColorFactory.h
//
//  Created by Dan Reed on 3/31/12.
//  Copyright (c) 2012 danreed.net. All rights reserved.
//

/*
 * ----------------------------------------------------------------------------
 * "BEER-WARE LICENSE":
 * <dan@danreed.net> wrote this class. As long as you retain this notice you
 * can do whatever you want with this stuff. If we meet some day, and you think
 * this stuff is worth it, you can buy me a beer in return --Dan Reed
 * ----------------------------------------------------------------------------
 */

#define PRIMARY_COLOR @"FFCF9C"
#define SECONDARY_COLOR @"8190C4"
#define TERTIARY_COLOR @"7CCB9E"

#define PRIMARY_SHADOW_COLOR @"BFA487"
#define SECONDARY_SHADOW_COLOR @"6D7693"
#define TERTIARY_SHADOW_COLOR @"6C987F"

#define PRIMARY_BOLD_COLOR @"A66E33"
#define SECONDARY_BOLD_COLOR @"2A3E7F"
#define TERTIARY_BOLD_COLOR @"288450"

#define PRIMARY_LIGHT_COLOR @"FFDBB5"
#define SECONDARY_LIGHT_COLOR @"A7B5E2"
#define TERTIARY_LIGHT_COLOR @"A2E5BF"

#define PRIMARY_HIGHLIGHT_COLOR @"FFE4C8"
#define SECONDARY_HIGHLIGHT_COLOR @"C7D1F2"
#define TERTIARY_HIGHLIGHT_COLOR @"C4F5D9"

#import <Foundation/Foundation.h>

@interface ColorFactory : NSObject{
    UIColor *primary;
    UIColor *secondary;
    UIColor *tertiary;
    
    UIColor *primaryShadow;
    UIColor *secondaryShadow;
    UIColor *tertiaryShadow;
    
    UIColor *primaryBold;
    UIColor *secondaryBold;
    UIColor *tertiaryBold;
    
    UIColor *primaryLight;
    UIColor *secondaryLight;
    UIColor *tertiaryLight;
    
    UIColor *primaryHighlight;
    UIColor *secondaryHighlight;
    UIColor *tertiaryHighlight;
}

@property (nonatomic, strong) UIColor *primary;
@property (nonatomic, strong) UIColor *secondary;
@property (nonatomic, strong) UIColor *tertiary;

@property (nonatomic, strong) UIColor *primaryShadow;
@property (nonatomic, strong) UIColor *secondaryShadow;
@property (nonatomic, strong) UIColor *tertiaryShadow;

@property (nonatomic, strong) UIColor *primaryBold;
@property (nonatomic, strong) UIColor *secondaryBold;
@property (nonatomic, strong) UIColor *tertiaryBold;

@property (nonatomic, strong) UIColor *primaryLight;
@property (nonatomic, strong) UIColor *secondaryLight;
@property (nonatomic, strong) UIColor *tertiaryLight;

@property (nonatomic, strong) UIColor *primaryHighlight;
@property (nonatomic, strong) UIColor *secondaryHighlight;
@property (nonatomic, strong) UIColor *tertiaryHighlight;

+(ColorFactory *)sharedFactory;

+ (UIColor *) colorFromHex:(NSString *)hex;
+ (UIColor *) colorFromRGB:(int)red:(int)green:(int)blue;
+ (UIColor *) colorFromRGBA:(int)red:(int)green:(int)blue:(float)alpha;


@end
