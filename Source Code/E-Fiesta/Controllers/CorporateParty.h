//
//  CorporateParty.h
//  E-Fiesta
//
//  Created by PC-104 on 01/01/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomizedPackage.h"
#import "CorporatePredefined.h"
#import "CorporatePredefinedGold.h"
@interface CorporateParty : UITableViewController<UIActionSheetDelegate>
{
    IBOutlet UIButton *btnSelectPackage;
     IBOutlet UIButton *btnSelectGuest;
    IBOutlet UITextView *txtCorporate;
}
-(IBAction)onClick:(id)sender;
-(IBAction)onGuestClick:(id)sender;
@end
