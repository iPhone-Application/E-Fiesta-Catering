//
//  SplashScreen.m
//  E-Fiesta
//
//  Created by PC-104 on 26/09/15.
//  Copyright (c) 2015 PC-104. All rights reserved.
//

#import "SplashScreen.h"

@interface SplashScreen ()

@end

@implementation SplashScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"SplashImage"]]];
    
    [self performSelector:@selector(onPush) withObject:nil afterDelay:3.0f];
    // Do any additional setup after loading the view.
}

-(void)onPush
{
    LoginPage *obj=[self.storyboard instantiateViewControllerWithIdentifier:@"LoginPage"];
    
    [self.navigationController pushViewController:obj animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
