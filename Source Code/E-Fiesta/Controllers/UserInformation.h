//
//  UserInformation.h
//  E-Fiesta
//
//  Created by PC-104 on 05/02/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OrderReceiptScreen.h"

@interface UserInformation : UITableViewController<UIActionSheetDelegate>
{
    IBOutlet UITextField *txtName;
    IBOutlet UITextField *txtPhone;
    IBOutlet UITextField *txtEmail;
    IBOutlet UITextField *txtHouse;
    IBOutlet UITextField *txtStreet;
    IBOutlet UITextField *txtCity;
   
   IBOutlet UIButton *btnSelectGuest;
    
    IBOutlet UIDatePicker *MyDatePicker;
    IBOutlet UITextField *txtEventDate;
    UIDatePicker *datePicker;
    UIPickerView *pickerView;
}

@property (strong,nonatomic) NSString *strPrice;
@property (strong,nonatomic) NSString *strName;
@property (strong,nonatomic) NSString *strPlotAddress;
@property (strong,nonatomic) NSString *strStreetAddress;
@property (strong,nonatomic) NSString *strCity;
@property (strong,nonatomic) NSString *strPackage;
@property (strong,nonatomic) NSString *strGuest;
@property (strong,nonatomic) NSString *strDisplayGuest;
@property (strong,nonatomic) NSString *strEventDate;
@property (strong,nonatomic) IBOutlet UILabel *lblDisplayGuest;

-(IBAction)onGuestClick:(id)sender;
-(IBAction)onOrderSubmit:(id)sender;
@end
