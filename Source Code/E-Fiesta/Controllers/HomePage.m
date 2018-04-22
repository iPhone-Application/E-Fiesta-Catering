//
//  HomePage.m
//  E-Fiesta
//
//  Created by PC-104 on 21/08/15.
//  Copyright (c) 2015 PC-104. All rights reserved.
//

#import "HomePage.h"

@interface HomePage ()

@end

@implementation HomePage

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    self.navigationItem.hidesBackButton = YES;
    [self setTitle:@"Home Page"];
    
    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(0,0, 70,30)];
    [btn setTitle:@"Logout" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onLogOutclick:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *btnItem=[[UIBarButtonItem alloc] initWithCustomView:btn];
    [self.navigationItem setRightBarButtonItem:btnItem];
    }
-(IBAction)onLogOutclick:(id)sender
{
    NSArray *arr=self.navigationController.viewControllers;
    [self.navigationController popToViewController:[arr objectAtIndex:0] animated:YES];
}
-(IBAction)onHomePage:(id)sender
{
 AboutUs *objAboutUs=[self.storyboard instantiateViewControllerWithIdentifier:@"AboutUs"];
 [self.navigationController pushViewController:objAboutUs animated:YES];
    
}
-(IBAction)onContactUs:(id)sender
{
ContactUs *objContactUs=[self.storyboard instantiateViewControllerWithIdentifier:@"ContactUs"];
[self.navigationController pushViewController:objContactUs animated:YES];

}

-(IBAction)onFeedback:(id)sender
{
    Feedback *objFeedback=[self.storyboard instantiateViewControllerWithIdentifier:@"Feedback"];
    [self.navigationController pushViewController:objFeedback animated:YES];
    
}

-(IBAction)onGallery:(id)sender
{
    GalleryScreen *objGallery=[self.storyboard instantiateViewControllerWithIdentifier:@"GalleryScreen"];
    [self.navigationController pushViewController:objGallery animated:YES];
    
}

-(IBAction)onMenu:(id)sender
{
     Menu *objMenu=[self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
    [self.navigationController pushViewController:objMenu animated:YES];
    
}
-(IBAction)onLocation:(id)sender
{
    LocationScreen *objLocation=[self.storyboard instantiateViewControllerWithIdentifier:@"LocationScreen"];
    [self.navigationController pushViewController:objLocation animated:YES];
    
}

@end
