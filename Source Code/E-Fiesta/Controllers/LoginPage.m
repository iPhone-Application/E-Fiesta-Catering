//
//  LoginPage.m
//  E-Fiesta
//
//  Created by PC-104 on 16/08/15.
//  Copyright (c) 2015 PC-104. All rights reserved.
//

#import "LoginPage.h"

@interface LoginPage ()

@end

@implementation LoginPage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController setNavigationBarHidden:NO];
    [self.navigationItem setHidesBackButton:YES];
    [self setTitle:@"E-Fiesta"];
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];

    UIImageView *ImgView=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT)];
    [ImgView sizeToFit];
    ImgView.image=[UIImage imageNamed:@"BgImage"];
    [self.tableView setBackgroundView:ImgView];
       
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}
-(IBAction)Login:(id)sender
{
    BOOL isValidate = [DBShareObj checkIsUserInDb:txtUsername.text :txtPassword.text];

    if (isValidate)
    {
        txtPassword.text=@"";
        txtUsername.text=@"";
        HomePage *objHome=[self.storyboard instantiateViewControllerWithIdentifier:@"HomePage"];
        [self.navigationController pushViewController:objHome animated:YES];
    }
    
    else
    {
        UIAlertView * alert =   [[UIAlertView alloc]initWithTitle:@"Login Unsuccessful" message:@"Incorrect Username or Password" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }

}
-(IBAction)onSignup:(id)sender
{
    RegistrationPage *objRegister=[self.storyboard instantiateViewControllerWithIdentifier:@"RegistrationPage"];
    [self.navigationController pushViewController:objRegister animated:YES];
}
-(IBAction)onForgotPassword:(id)sender
{
    ForgetPassword *objFpwd=[self.storyboard instantiateViewControllerWithIdentifier:@"ForgetPassword"];
    [self.navigationController pushViewController:objFpwd animated:YES];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField;
{
    [textField resignFirstResponder];
    return YES;
}
@end
