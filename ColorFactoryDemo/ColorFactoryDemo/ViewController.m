//
//  ViewController.m
//  ColorFactoryDemo
//
//  Created by Dan Reed on 5/4/12.
//  Copyright (c) 2012 Attachments.me. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize primaryLabel, primaryBoldLabel, primaryLightLabel, primaryShadowLabel, primaryHighlightLabel;
@synthesize secondaryLabel, secondaryBoldLabel, secondaryLightLabel, secondaryShadowLabel, secondaryHighlightLabel;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    ourColors = [ColorFactory sharedFactory];
    
    [self setupLabelColors];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}
     
#pragma mark - view setup methods
     
- (void) setupLabelColors{
    [primaryLabel setTextColor:[ourColors primary]];
    [secondaryLabel setTextColor:[ourColors secondary]];
    [primaryBoldLabel setTextColor:[ourColors primaryBold]];
    [secondaryBoldLabel setTextColor:[ourColors secondaryBold]];
    [primaryShadowLabel setTextColor:[ourColors primaryShadow]];
    [secondaryShadowLabel setTextColor:[ourColors secondaryShadow]];
    [primaryLightLabel setTextColor:[ourColors primaryLight]];
    [secondaryLightLabel setTextColor:[ourColors secondaryLight]];
    [primaryHighlightLabel setTextColor:[ourColors primaryHighlight]];
    [secondaryHighlightLabel setTextColor:[ourColors secondaryHighlight]];
}


@end
