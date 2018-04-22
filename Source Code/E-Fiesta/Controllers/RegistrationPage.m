//
//  RegistrationPage.m
//  E-Fiesta
//
//  Created by PC-104 on 14/08/15.
//  Copyright (c) 2015 PC-104. All rights reserved.
//

#import "RegistrationPage.h"

@interface RegistrationPage ()

@end



@implementation RegistrationPage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"Registration Form";
    [self.tableView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
//    self.navigationItem.hidesBackButton = YES;
//    UIButton *btnBack = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 25, 25)];

    datePicker =[[UIDatePicker alloc]initWithFrame:CGRectMake(0, 0,0, 200)];
    datePicker.datePickerMode=UIDatePickerModeDate;
    datePicker.date=[NSDate date];
    [datePicker addTarget:self action:@selector(LabelTitle:) forControlEvents:UIControlEventValueChanged];
    
    UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    toolBar.barStyle = UIBarStyleBlackOpaque;
    toolBar.translucent = YES;
    toolBar.tintColor = nil;
    [toolBar sizeToFit];
    
    UIBarButtonItem* doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done"                                                               style:UIBarButtonItemStyleDone target:self                                                                 action:@selector(pickerDoneClicked:)] ;
    [toolBar setItems:[NSArray arrayWithObjects:doneButton, nil]];
    
    [txtDob setInputView:MyDatePicker];
    [txtDob setInputAccessoryView:toolBar];
    
    [btnMale  setImage:[UIImage imageNamed:@"On"] forState:UIControlStateNormal];
    [btnFemale  setImage:[UIImage imageNamed:@"Off"] forState:UIControlStateNormal];
    
    
        strMale = btnMale.titleLabel.text;
}
-(IBAction)pickerDoneClicked:(id)sender
{
    [txtDob resignFirstResponder ];
}
-(IBAction)LabelTitle:(id)sender
{
    NSDateFormatter *dateFormat=[[NSDateFormatter alloc]init];
    dateFormat.dateStyle=NSDateFormatterMediumStyle;
    [dateFormat setDateFormat:@"dd-MMMM-yyyy"];
    NSString *str=[NSString stringWithFormat:@"%@",[dateFormat stringFromDate:datePicker.date]];
    txtDob.text=str;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if (textField==txtDob)
    {
        [txtDob setInputView:datePicker];
    }
    return YES;
}
- (IBAction)doneTyping:(id)sender
{
    [txtDob resignFirstResponder];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
-(void)pickerDoneClicked
{
    
}



-(IBAction)onClick:(UIButton *)sender
{
    if ([txtFname.text isEqualToString:@""])
    {
        [@"Please enter Firstname" showAlert];
        return;
    }
    else if ([txtLname.text isEqualToString:@""])
    {
        [@"Please enter Lastname" showAlert];
        return;
    }
    else if ([txtMname.text isEqualToString:@""])
    {
        [@"Please enter Middle name" showAlert];
        return;
    }
    else if ([txtDob.text isEqualToString:@""])
    {
        [@"Please enter Date of birth" showAlert];
        return;
    }
    else if ([txtEmail.text isEqualToString:@""])
    {
        [@"Please enter Email" showAlert];
        return;
    }
    else if ([txtUsername.text isEqualToString:@""])
    {
        [@"Please enter Username" showAlert];
        return;
    }
    else if ([txtPwd.text isEqualToString:@""])
    {
        [@"Please enter Password" showAlert];
        return;
    }
    else if ([txtCPwd.text isEqualToString:@""])
    {
        [@"Please enter Confirm password" showAlert];
        return;
    }
    else if ([txtCPwd.text isEqualToString:txtPwd.text]== FALSE)
    {
        txtCPwd.text=@"";
        [@"Confirm password does not match Password" showAlert];
        return;
    }
    else if (![self validatePhoneWithString:[txtPhn text]])
    {
        txtPhn.text=@"";
        [@"Please enter valid phone number" showAlert];
        return;
    }
   
    else if (![self validateEmailWithString:[txtEmail text]])
    {
        txtEmail.text=@"";
        [@"Please enter valid email" showAlert];
        return;
    }
    
    else
    {
        [self storeRegistrationInfoIn_DB];
        HomePage *objHome=[self.storyboard instantiateViewControllerWithIdentifier:@"HomePage"];
        [self.navigationController pushViewController:objHome animated:YES];
    }

}

- (BOOL)validateEmailWithString:(NSString*)email
{
    NSString *emailRegex = @"^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];

}
- (BOOL)validatePhoneWithString:(NSString*)phone
{
//    NSString *phoneNumber;
NSString *phoneRegex = @"[235689][0-9]{6}([0-9]{3})?";
NSPredicate *test = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
    return [test evaluateWithObject:phone];
}

-(void)storeRegistrationInfoIn_DB
{
    [DBShareObj insertData:txtFname.text :txtMname.text :txtLname.text :txtUsername.text :txtPwd.text :txtPhn.text :txtEmail.text :txtAddress.text :txtDob.text];
    [@"Registered successfully" showAlert];
}


- (IBAction)btnGenderTapped:(UIButton *)sender {
    

    if ((sender.tag==2)) {
        [btnMale  setImage:[UIImage imageNamed:@"Off"] forState:UIControlStateNormal];
        [btnFemale  setImage:[UIImage imageNamed:@"On"] forState:UIControlStateNormal];
        
        
    }
    else
    {
        [btnMale  setImage:[UIImage imageNamed:@"On"] forState:UIControlStateNormal];
        [btnFemale  setImage:[UIImage imageNamed:@"Off"] forState:UIControlStateNormal];
    }
}
@end
