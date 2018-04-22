//
//  Payment.h
//  E-Fiesta
//
//  Created by iFlame on 21/03/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Payment : UITableViewController
{
    IBOutlet UITextField *txtFname;
    IBOutlet UITextField *txtLname;
    IBOutlet UITextField *txtCardnum;
    IBOutlet UITextField *txtCVV;
    IBOutlet UITextField *txtExpDate;
    IBOutlet UIDatePicker *MyDatePicker;
    UIDatePicker *datePicker;
    UIPickerView *pickerView;
}
-(IBAction)onCancel:(id)sender;
@end
