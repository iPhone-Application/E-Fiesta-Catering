//
//  OrderReceiptScreen.m
//  E-Fiesta
//
//  Created by PC-104 on 05/02/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import "OrderReceiptScreen.h"

@implementation OrderReceiptScreen
- (void)viewDidLoad
{
    [super viewDidLoad];
      [self.tableView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
    self.title=@"Order Receipt";
  self.navigationItem.hidesBackButton = YES;
    
    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(0,0, 70,30)];
    [btn setTitle:@"Logout" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onDoneClick:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *btnItem=[[UIBarButtonItem alloc] initWithCustomView:btn];
    [self.navigationItem setRightBarButtonItem:btnItem];

     _lblName.text=_strName;
     _lblPackage.text=_strPackage;
     _lblPlotAddress.text=_strPlotAddress;
     _lblStreetAddress.text=_strStreetAddress;
    _lblCity.text=_strCity;

    _lblGuest.text=_strDisplayGuest;
   
    _lblEventDate.text=_strEventDate;
    
    if ([_strPackage isEqual: @"Customized Package"]) {
        AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
        _lblFinalPrice.text = appDelegate.FinalPrice;
        //    _lblTotalCost .text = [NSString stringWithFormat:@"%@*%@",_lblGuest.text,_lblFinalPrice.text];
        int TotalCost = [_lblFinalPrice.text integerValue]*[_lblGuest.text integerValue];
        
        _lblTotalCost.text = [NSString stringWithFormat:@"%d", TotalCost];
        int DepositCost= [_lblTotalCost.text integerValue]/2;
        _lblDepositCost.text=[NSString stringWithFormat:@"%d",DepositCost];

    }
    else
    {
         _lblPrice.text=_strPrice;
        int TotalCost = [_lblPrice.text integerValue]*[_lblGuest.text integerValue];
        
        _lblTotalCost.text = [NSString stringWithFormat:@"%d", TotalCost];
        int DepositCost= [_lblTotalCost.text integerValue]/2;
        _lblDepositCost.text=[NSString stringWithFormat:@"%d",DepositCost];

    }
    
}
-(IBAction)onDoneClick:(id)sender
{
        LoginPage *objLogin=[self.storyboard instantiateViewControllerWithIdentifier:@"LoginPage"];
    
    [self.navigationController pushViewController:objLogin animated:YES];
}
-(void)storeOrderReceiptInfoIn_DB
{
    [DBShareObj insertDataOrder:_lblName.text :_lblPackage.text :_lblPlotAddress.text :_lblStreetAddress.text :_lblCity.text :_lblEventDate.text :_lblGuest.text :_lblPrice.text :_lblTotalCost.text :_lblDepositCost.text];
    [@"Your information has been stored successfully" showAlert];
}
-(IBAction)onPaymentClick:(id)sender
{
    Payment *objPayment=[self.storyboard instantiateViewControllerWithIdentifier:@"Payment"];
    [self storeOrderReceiptInfoIn_DB];
    [self.navigationController pushViewController:objPayment animated:YES];
}
-(IBAction)onHomeClick:(id)sender
{
    HomePage *objHome=[self.storyboard instantiateViewControllerWithIdentifier:@"HomePage"];
    [self.navigationController pushViewController:objHome animated:YES];
}
@end
