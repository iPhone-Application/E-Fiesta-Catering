//
//  OrderReceiptScreen.h
//  E-Fiesta
//
//  Created by PC-104 on 05/02/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomePage.h"
#import "Payment.h"
#import "AppDelegate.h"

@interface OrderReceiptScreen : UITableViewController

@property (strong,nonatomic) NSString *strPrice;
@property (strong,nonatomic) NSString *strFinalPrice;
@property (strong,nonatomic) NSString *strName;
@property (strong,nonatomic) NSString *strPlotAddress;
@property (strong,nonatomic) NSString *strStreetAddress;
@property (strong,nonatomic) NSString *strCity;
@property (strong,nonatomic) NSString *strPackage;
@property (strong,nonatomic) NSString *strGuest;
@property (strong,nonatomic) NSString *strDisplayGuest;
@property (strong,nonatomic) NSString *strEventDate;
@property (strong,nonatomic) NSString *strDeposit;
@property (strong,nonatomic) IBOutlet UILabel *lblPrice;
@property (strong,nonatomic) IBOutlet UILabel *lblFinalPrice;
@property (strong,nonatomic) IBOutlet UILabel *lblName;
@property (strong,nonatomic) IBOutlet UILabel *lblPlotAddress;
@property (strong,nonatomic) IBOutlet UILabel *lblStreetAddress;
@property (strong,nonatomic) IBOutlet UILabel *lblCity;
@property (strong,nonatomic) IBOutlet UILabel *lblGuest;
@property (strong,nonatomic) IBOutlet UILabel *lblDisplayGuest;
@property (strong,nonatomic) IBOutlet UILabel *lblPackage;
@property (strong,nonatomic) IBOutlet UILabel *lblEventDate;
@property (strong,nonatomic) IBOutlet UILabel *lblTotalCost;
@property (strong,nonatomic) IBOutlet UILabel *lblDepositCost;
@end
