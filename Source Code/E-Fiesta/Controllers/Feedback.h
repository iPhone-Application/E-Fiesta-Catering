//
//  Feedback.h
//  E-Fiesta
//
//  Created by PC-104 on 06/11/15.
//  Copyright (c) 2015 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomePage.h"
#import "ClientFeedbacks.h"

@interface Feedback : UITableViewController
{
    IBOutlet UITextField *txtName;
    IBOutlet UITextField *txtEmail;
    IBOutlet UITextField *txtPhone;
    IBOutlet UITextView *txtFeedback;
}
@end
