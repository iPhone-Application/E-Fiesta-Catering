//
//  Wedding.h
//  E-Fiesta
//
//  Created by PC-104 on 01/01/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomizedPackage.h"
#import "WeddingPredefined.h"
#import "WeddingPredefinedGold.h"

@interface Wedding : UITableViewController<UIActionSheetDelegate>
{
    IBOutlet UIButton *btnSelectPackage;
    IBOutlet UITextView *txtWedding;
       }

-(IBAction)onClick:(id)sender;


@end
