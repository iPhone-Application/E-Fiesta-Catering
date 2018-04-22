//
//  Reception.h
//  E-Fiesta
//
//  Created by PC-104 on 01/01/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomizedPackage.h"
#import "ReceptionPredefined.h"
#import "ReceptionPredefinedGold.h"
@interface Reception : UITableViewController<UIActionSheetDelegate>
{
    IBOutlet UIButton *btnSelectPackage;
     IBOutlet UIButton *btnSelectGuest;
    IBOutlet UITextView *txtReception;
}
-(IBAction)onClick:(id)sender;
-(IBAction)onGuestClick:(id)sender;

@end
