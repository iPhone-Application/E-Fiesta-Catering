//
//  LoginPage.h
//  E-Fiesta
//
//  Created by PC-104 on 16/08/15.
//  Copyright (c) 2015 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegistrationPage.h"
#import "HomePage.h"
#import "ForgetPassword.h"
@interface LoginPage : UITableViewController<UITextFieldDelegate,UITableViewDataSource,UITableViewDelegate>
{
  
    UITableView *tblView;
    
IBOutlet UITextField *txtUsername;
IBOutlet UITextField *txtPassword;
IBOutlet UIButton *btnLogin;
IBOutlet UIButton *btnFpwd;
IBOutlet UIButton *btnSignup;
    NSArray *arr;
    NSMutableArray *arrFetchData;
}

@property(strong,nonatomic)NSString *strUsername;
@property(strong,nonatomic)NSString *strPassword;

@end

