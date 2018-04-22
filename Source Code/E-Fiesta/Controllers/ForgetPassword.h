//
//  ForgetPassword.h
//  E-Fiesta
//
//  Created by iFlame. on 26/03/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForgetPassword : UITableViewController
{
    
    IBOutlet UITextField *txtUsername;
    IBOutlet UITextField *txtPassword;
     IBOutlet UITextField *txtConfirmPassword;
     IBOutlet UITextField *txtEmailID;
    IBOutlet UIButton *btnSave;
    IBOutlet UIButton *btnCancel;
}
@end
