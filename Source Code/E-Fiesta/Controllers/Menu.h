//
//  Menu.h
//  E-Fiesta
//
//  Created by PC-104 on 21/11/15.
//  Copyright (c) 2015 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Wedding.h"
#import "GetTogether.h"
#import "BirthdayParty.h"
#import "CorporateParty.h"
#import "Reception.h"
#import "GraduationParty.h"
#import "CancelOrder.h"
@interface Menu : UITableViewController
{
    IBOutlet UIButton *btnWedding;
    IBOutlet UIButton *btnGettogether;
    IBOutlet UIButton *btnReception;
    IBOutlet UIButton *btnBirthdayParty;
    IBOutlet UIButton *btnCorporateParty;
    IBOutlet UIButton *btnGraduationParty;
    IBOutlet UIButton *btnCancelOrder;
}
@end
