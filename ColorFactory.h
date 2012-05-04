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
* can do whatever you want with this stuff. If we meet some day (and you think
* this stuff is worth it) you can buy me a beer in return --Dan Reed
* ----------------------------------------------------------------------------
*/

#define PRIMARY_COLOR @"397285"
#define SECONDARY_COLOR @"d49756"

#define PRIMARY_SHADOW_COLOR @"3a6a79"
#define SECONDARY_SHADOW_COLOR @"c28f59"

#define PRIMARY_BOLD_COLOR @"296275"
#define SECONDARY_BOLD_COLOR @"bb7e3f"

#define PRIMARY_LIGHT_COLOR @"6eacc1"
#define SECONDARY_LIGHT_COLOR @"e9b681"

#define PRIMARY_HIGHLIGHT_COLOR @"83b2c1"
#define SECONDARY_HIGHLIGHT_COLOR @"e9c49c"

#import <Foundation/Foundation.h>

@interface ColorFactory : NSObject{
    UIColor *primary;
    UIColor *secondary;
    
    UIColor *primaryShadow;
    UIColor *secondaryShadow;
    
    UIColor *primaryBold;
    UIColor *secondaryBold;
    
    UIColor *primaryLight;
    UIColor *secondaryLight;
    
    UIColor *primaryHighlight;
    UIColor *secondaryHighlight;
}

@property (nonatomic, strong) UIColor *primary;
@property (nonatomic, strong) UIColor *secondary;


@property (nonatomic, strong) UIColor *primaryShadow;
@property (nonatomic, strong) UIColor *secondaryShadow;

@property (nonatomic, strong) UIColor *primaryBold;
@property (nonatomic, strong) UIColor *secondaryBold;

@property (nonatomic, strong) UIColor *primaryLight;
@property (nonatomic, strong) UIColor *secondaryLight;

@property (nonatomic, strong) UIColor *primaryHighlight;
@property (nonatomic, strong) UIColor *secondaryHighlight;

+(ColorFactory *)sharedFactory;

@end

@interface UIColor (ColorFromHex)
+ (UIColor *) colorFromHex:(NSString *)hex;
+ (UIColor *) colorFromHex:(NSString *)hex withAlpha:(float)alphaValue;
@end
