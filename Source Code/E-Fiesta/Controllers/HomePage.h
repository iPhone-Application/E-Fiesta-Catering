//
//  HomePage.h
//  E-Fiesta
//
//  Created by PC-104 on 21/08/15.
//  Copyright (c) 2015 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AboutUs.h"
#import "ContactUs.h"
#import "Feedback.h"
#import "Menu.h"
#import "LocationScreen.h"
#import "GalleryScreen.h"
@interface HomePage : UITableViewController
{
    IBOutlet UIButton *btnContactUs;
    IBOutlet UIButton *btnAboutUs;
    IBOutlet UIButton *btnFeedback;
     IBOutlet UIButton *btnMenu;
    IBOutlet UIButton *btnLocation;
    IBOutlet UIButton *btnGallery;
    
}

@end
