//
//  ViewController.h
//  ColorFactoryDemo
//
//  Created by Dan Reed on 5/4/12.
//  Copyright (c) 2012 Attachments.me. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ColorFactory.h"

@interface ViewController : UIViewController{
    ColorFactory *ourColors;
}

@property (nonatomic, strong) IBOutlet UILabel *primaryLabel;
@property (nonatomic, strong) IBOutlet UILabel *secondaryLabel;
@property (nonatomic, strong) IBOutlet UILabel *primaryShadowLabel;
@property (nonatomic, strong) IBOutlet UILabel *secondaryShadowLabel;
@property (nonatomic, strong) IBOutlet UILabel *primaryBoldLabel;
@property (nonatomic, strong) IBOutlet UILabel *secondaryBoldLabel;
@property (nonatomic, strong) IBOutlet UILabel *primaryLightLabel;
@property (nonatomic, strong) IBOutlet UILabel *secondaryLightLabel;
@property (nonatomic, strong) IBOutlet UILabel *primaryHighlightLabel;
@property (nonatomic, strong) IBOutlet UILabel *secondaryHighlightLabel;

- (void)setupLabelColors;

@end
