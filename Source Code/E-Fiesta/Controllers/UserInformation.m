//
//  UserInformation.m
//  E-Fiesta
//
//  Created by PC-104 on 05/02/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import "UserInformation.h"

@implementation UserInformation

-(void)viewDidLoad
{
    [super viewDidLoad];
        [self.tableView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
    
    self.title=@"User Information";

    datePicker =[[UIDatePicker alloc]initWithFrame:CGRectMake(0, 0,0, 200)];
    datePicker.datePickerMode=UIDatePickerModeDateAndTime;
    datePicker.date=[NSDate date];
    [datePicker addTarget:self action:@selector(LabelTitle:) forControlEvents:UIControlEventValueChanged];
    
    UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    toolBar.barStyle = UIBarStyleBlackOpaque;
    toolBar.translucent = YES;
    toolBar.tintColor = nil;
    [toolBar sizeToFit];
    
    UIBarButtonItem* doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done"                                                               style:UIBarButtonItemStyleDone target:self                                                                 action:@selector(pickerDoneClicked:)] ;
    [toolBar setItems:[NSArray arrayWithObjects:doneButton, nil]];
    
    [txtEventDate setInputView:MyDatePicker];
    [txtEventDate setInputAccessoryView:toolBar];
}

-(IBAction)pickerDoneClicked:(id)sender
{
    [txtEventDate resignFirstResponder ];
}
-(IBAction)LabelTitle:(id)sender
{
    NSDateFormatter *dateFormat=[[NSDateFormatter alloc]init];
    dateFormat.dateStyle=NSDateFormatterMediumStyle;
    [dateFormat setDateFormat:@"dd-MMMM-yyyy hh:mm:ss"];
    NSString *str=[NSString stringWithFormat:@"%@",[dateFormat stringFromDate:datePicker.date]];
    txtEventDate.text=str;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if (textField==txtEventDate)
    {
        [txtEventDate setInputView:datePicker];
    }
    return YES;
}
- (IBAction)doneTyping:(id)sender
{
    [txtEventDate resignFirstResponder];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
-(void)pickerDoneClicked
{
    
}

   
-(IBAction)onGuestClick:(id)sender
{
    UIActionSheet *actSht=[[UIActionSheet alloc] initWithTitle:@"Please Select" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"10",@"25",@"50",@"100",@"200",@"300",@"400",@"500",@"600",@"700",@"800",@"900",@"1000",@"1100",@"1300",@"1500",@"1700",@"2000",@"2200",@"2500",@"3000",@"4000",@"5000",nil];
    [actSht showInView:self.view];

       _lblDisplayGuest.text=_strDisplayGuest;
 
  
    }
-(void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 0){
        self.lblDisplayGuest.text=@"10";
      }
    else if (buttonIndex==1)
    {
        self.lblDisplayGuest.text=@"25";
    }
    else if (buttonIndex==2)
    {
        self.lblDisplayGuest.text=@"50";
    }
    else if (buttonIndex==3)
    {
        self.lblDisplayGuest.text=@"100";
    }
    else if (buttonIndex==4)
    {
        self.lblDisplayGuest.text=@"200";
    }
    else if (buttonIndex==5)
    {
        self.lblDisplayGuest.text=@"300";
    }
    else if (buttonIndex==6)
    {
        self.lblDisplayGuest.text=@"400";
    }
    else if (buttonIndex==7)
    {
        self.lblDisplayGuest.text=@"500";
    }
    else if (buttonIndex==8)
    {
        self.lblDisplayGuest.text=@"600";
    }
    else if (buttonIndex==9)
    {
        self.lblDisplayGuest.text=@"700";
    }
    else if (buttonIndex==10)
    {
        self.lblDisplayGuest.text=@"800";
    }
    else if (buttonIndex==11)
    {
        self.lblDisplayGuest.text=@"900";
    }
    else if (buttonIndex==12)
    {
        self.lblDisplayGuest.text=@"1000";
    }
    else if (buttonIndex==13)
    {
        self.lblDisplayGuest.text=@"1100";
    }
    else if (buttonIndex==14)
    {
        self.lblDisplayGuest.text=@"1300";
    }
    else if (buttonIndex==15)
    {
        self.lblDisplayGuest.text=@"1500";
    }
    else if (buttonIndex==16)
    {
        self.lblDisplayGuest.text=@"1700";
    }
    else if (buttonIndex==17)
    {
        self.lblDisplayGuest.text=@"2000";
    }
    else if (buttonIndex==18)
    {
        self.lblDisplayGuest.text=@"2200";
    }
    else if (buttonIndex==19)
    {
        self.lblDisplayGuest.text=@"2500";
    }
    else if (buttonIndex==20)
    {
        self.lblDisplayGuest.text=@"3000";
    }
    else if (buttonIndex==21)
    {
        self.lblDisplayGuest.text=@"4000";
    }
    else if (buttonIndex==22)
    {
        self.lblDisplayGuest.text=@"5000";
    }
    else
    {
        
    }
    NSLog(@"%ld", (long)buttonIndex);
    self.lblDisplayGuest.text =  [actionSheet buttonTitleAtIndex:buttonIndex];
}
-(IBAction)onOrderSubmit:(id)sender
{

    
        if ([txtName.text isEqualToString:@""]) {
            [@"Please enter Name" showAlert];
            return;
        }
        
        else if ([txtPhone.text isEqualToString:@""])
        {
            [@"Please enter Phone Number" showAlert];
            return;
        }
        else if ([txtEmail.text isEqualToString:@""])
        {
            [@"Please enter Email" showAlert];
            return;
        }
        else if ([txtHouse.text isEqualToString:@""])
        {
            [@"Please enter House Details" showAlert];
            return;
        }
        else if ([txtStreet.text isEqualToString:@""])
        {
            [@"Please enter Street Details" showAlert];
            return;
        }
        else if ([txtCity.text isEqualToString:@""])
        {
            [@"Please enter City,State,Zipcode" showAlert];
            return;
        }
        else if ([txtEventDate.text isEqualToString:@""])
        {
            [@"Please enter Event Date & Time" showAlert];
            return;
        }

    
        else if (![self validatePhoneWithString:[txtPhone text]])
        {
            txtPhone.text=@"";
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
            OrderReceiptScreen *objOrderReceipt=[self.storyboard instantiateViewControllerWithIdentifier:@"OrderReceiptScreen"];
            objOrderReceipt.strPrice=_strPrice;
            objOrderReceipt.strName=txtName.text;
            objOrderReceipt.strPackage=_strPackage;
            objOrderReceipt.strGuest=_strGuest;
            objOrderReceipt.strDisplayGuest=_lblDisplayGuest.text;
            objOrderReceipt.strPlotAddress=txtHouse.text;
            objOrderReceipt.strStreetAddress=txtStreet.text;
            objOrderReceipt.strCity=txtCity.text;
            objOrderReceipt.strEventDate=txtEventDate.text;
            
            [self.navigationController pushViewController:objOrderReceipt animated:YES];
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



@end
