//
//  CancelOrderCell.h
//  E-Fiesta
//
//  Created by iFlame. on 11/04/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CancelOrderCell : UITableViewCell

@property (strong,nonatomic) IBOutlet UILabel *lblName;
@property (strong,nonatomic) IBOutlet UILabel *lblPackage;
@property (strong,nonatomic) IBOutlet UILabel *lblEventDate;
@property (strong,nonatomic) IBOutlet UILabel *lblTotalCost;

@end
