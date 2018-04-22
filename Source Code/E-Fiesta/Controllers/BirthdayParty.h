//
//  BirthdayParty.h
//  E-Fiesta
//
//  Created by PC-104 on 01/01/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomizedPackage.h"
#import "BirthdayPredefined.h"
#import "BirthdayPredefinedGold.h"
@interface BirthdayParty : UITableViewController<UIActionSheetDelegate>
{
    IBOutlet UIButton *btnSelectPackage;
     IBOutlet UIButton *btnSelectGuest;
    IBOutlet UITextView *txtBirthday;
}
-(IBAction)onClick:(id)sender;
-(IBAction)onGuestClick:(id)sender;

@end
