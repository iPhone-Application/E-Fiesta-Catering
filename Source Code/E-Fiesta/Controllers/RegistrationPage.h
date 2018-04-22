//
//  RegistrationPage.h
//  E-Fiesta
//
//  Created by PC-104 on 14/08/15.
//  Copyright (c) 2015 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginPage.h"
#import "NSString+NSString.h"


@interface RegistrationPage : UITableViewController
{
    IBOutlet UITextField *txtFname;
    IBOutlet UITextField *txtMname;
    IBOutlet UITextField *txtLname;
    IBOutlet UITextField *txtPhn;
    IBOutlet UITextField *txtEmail;
    IBOutlet UITextField *txtUsername;
    IBOutlet UITextField *txtPwd;
    IBOutlet UITextField *txtCPwd;
    IBOutlet UIDatePicker *MyDatePicker;
    
    IBOutlet UITextField *txtDob;
    IBOutlet UIButton *btnMale;
    IBOutlet UIButton *btnFemale;
    IBOutlet UITextField *txtAddress;
    BOOL isValidate;
    UIDatePicker *datePicker;
    UIPickerView *pickerView;
    NSString *strMale,*strFemale;
}

- (IBAction)btnGenderTapped:(id)sender;

@end

