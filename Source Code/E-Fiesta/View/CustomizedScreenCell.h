//
//  CustomizedScreenCell.h
//  E-Fiesta
//
//  Created by PC-104 on 13/01/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomizedScreenCell : UITableViewCell

@property (strong,nonatomic) IBOutlet UIImageView *imgItemIcon;
@property (strong,nonatomic) IBOutlet UILabel *lblTitle;
@property (strong,nonatomic) IBOutlet UILabel *lblDesc;
@property (strong,nonatomic) IBOutlet UIButton *btnSelectedItem;
@property (strong,nonatomic) IBOutlet UILabel *lblPrice;
@end
