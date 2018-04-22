/*
Copyright (C) 2015 Apple Inc. All Rights Reserved.
See LICENSE.txt for this sample’s licensing information

Abstract:
The secondary detailed view controller for this app.
*/

#import "DetailViewController.h"


@interface DetailViewController ()


@end

@implementation DetailViewController
@synthesize imageView,image;
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    imageView.image = image;
}

@end
