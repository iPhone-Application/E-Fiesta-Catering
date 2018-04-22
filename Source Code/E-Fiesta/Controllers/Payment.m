//
//  Payment.m
//  E-Fiesta
//
//  Created by iFlame on 21/03/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import "Payment.h"

@interface Payment ()

@end

@implementation Payment

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"Payment";
    [self.tableView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    
    datePicker =[[UIDatePicker alloc]initWithFrame:CGRectMake(0, 0,0, 200)];
    datePicker.datePickerMode=UIDatePickerModeDate;
    datePicker.date=[NSDate date];
    [datePicker addTarget:self action:@selector(LabelTitle:) forControlEvents:UIControlEventValueChanged];
    
    UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    toolBar.barStyle = UIBarStyleBlackOpaque;
    toolBar.translucent = YES;
    toolBar.tintColor = nil;
    [toolBar sizeToFit];
    
    UIBarButtonItem* doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self                                                                 action:@selector(pickerDoneClicked:)] ;
    [toolBar setItems:[NSArray arrayWithObjects:doneButton, nil]];
    
    [txtExpDate setInputView:datePicker];
    [txtExpDate setInputAccessoryView:toolBar];
}
-(IBAction)LabelTitle:(id)sender
{
    NSDateFormatter *dateFormat=[[NSDateFormatter alloc]init];
    dateFormat.dateStyle=NSDateFormatterMediumStyle;
    [dateFormat setDateFormat:@"dd-MMMM-yyyy"];
    NSString *str=[NSString stringWithFormat:@"%@",[dateFormat stringFromDate:datePicker.date]];
    txtExpDate.text=str;
}
-(IBAction)pickerDoneClicked:(id)sender
{
    [txtExpDate resignFirstResponder ];
}

-(IBAction)onClick:(UIButton *)sender
{
    if ([txtFname.text isEqualToString:@""])
    {
        [@"Please enter Firstname" showAlert];
        return;
    }
    else if ([txtLname.text isEqualToString:@""])
    {
        [@"Please enter Lastname" showAlert];
        return;
    }
    else if ([txtExpDate.text isEqualToString:@""])
    {
        [@"Please enter Expiration Date" showAlert];
        return;
    }
    else if ([txtCVV.text isEqualToString:@""])
    {
        [@"Please enter CVV" showAlert];
        return;
    }
    else if ([txtCardnum.text isEqualToString:@""])
    {
        [@"Please enter Card number" showAlert];
        return;
    }
    
    else if (![self validateCardNumberWithString:[txtCardnum text]])
    {
        txtCardnum.text=@"";
        [@"Please enter valid Card Number" showAlert];
        return;
    }
    
    else
    {
        [@"Payment was successfull...Thank you for ordering from E-Fiesta !!" showAlert];
        HomePage *objHome=[self.storyboard instantiateViewControllerWithIdentifier:@"HomePage"];
        [self.navigationController pushViewController:objHome animated:YES];
    }
    
}

- (BOOL)validateCardNumberWithString:(NSString*)cardnum
{
   
    NSString *cardRegex = @"[0-9]{16}$";
    NSPredicate *test = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", cardRegex];
    return [test evaluateWithObject:cardnum];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (txtCVV.text.length>3)
    {
        return NO;
    }
    return YES;
}
-(IBAction)onCancel:(id)sender{
    
    [@"Your order is cancelled" showAlert];
     HomePage *objHome=[self.storyboard instantiateViewControllerWithIdentifier:@"HomePage"];
    [self.navigationController pushViewController:objHome animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
