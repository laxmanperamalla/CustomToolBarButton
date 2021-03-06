//
//  Helper.m
//  CustomToolbar
//
//  Created by Paul Solt on 5/28/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "Helper.h"

@implementation Helper

// Create a custom button with images
+ (void)customizeBarButton:(UIBarButtonItem *)barButtonItem image:(UIImage *)image highlightedImage:(UIImage *)highlightedImage {

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button setBackgroundImage:highlightedImage forState:UIControlStateHighlighted];
    [button setTitle:barButtonItem.title forState:UIControlStateNormal];
    
    [button setContentEdgeInsets:UIEdgeInsetsMake(0, 10, 0, 10)];
    button.titleLabel.font = [UIFont boldSystemFontOfSize:12];
    [button sizeToFit];
    
    // Text shadow
    button.titleLabel.shadowOffset = CGSizeMake(0,-1);
    button.titleLabel.shadowColor = [UIColor darkGrayColor];
    
    // Set the target action from the UIBarButton (IB)
    [button addTarget:barButtonItem.target action:barButtonItem.action
     forControlEvents:UIControlEventTouchUpInside];
    
    // Udpate the view
    [barButtonItem setCustomView:button];
}

@end
