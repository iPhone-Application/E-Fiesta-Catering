//
//  Feedback.m
//  E-Fiesta
//
//  Created by PC-104 on 06/11/15.
//  Copyright (c) 2015 PC-104. All rights reserved.
//

#import "Feedback.h"

@interface Feedback ()

@end

@implementation Feedback

- (void)viewDidLoad {
    [super viewDidLoad];
     [self.tableView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
     self.title=@"Feedback";
}
    -(IBAction)onClick:(UIButton *)sender
    {
            if ([txtFeedback.text isEqualToString:@""]) {
                [@"Please enter Feedback" showAlert];
                return;
            }
            else if ([txtPhone.text isEqualToString:@""])
            {
                [@"Please enter Phone Number" showAlert];
                return;
            }
            else if ([txtEmail.text isEqualToString:@""])
            {
                [@"Please enter Email" showAlert];
                return;
            }
            else if (![self validatePhoneWithString:[txtPhone text]])
            {
                txtPhone.text=@"";
                [@"Please enter valid phone number" showAlert];
                return;
            }
        
            else if (![self validateEmailWithString:[txtEmail text]])
            {
                txtEmail.text=@"";
                [@"Please enter valid email" showAlert];
                return;
            }


        else
        {
            [self storeFeedbackInfoIn_DB];
            return;
        }
    
   }
-(void)storeFeedbackInfoIn_DB
{
    
    [DBShareObj insertDataFb:txtName.text :txtPhone.text :txtEmail.text :txtFeedback.text];
    [@"Your feedback has been stored successfully" showAlert];
}

- (BOOL)validateEmailWithString:(NSString*)email
{
    NSString *emailRegex = @"^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
    
}
- (BOOL)validatePhoneWithString:(NSString*)phone
{
    //    NSString *phoneNumber;
    NSString *phoneRegex = @"[235689][0-9]{6}([0-9]{3})?";
    NSPredicate *test = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
    return [test evaluateWithObject:phone];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)onHomeClick:(id)sender
{
    HomePage *objHome=[self.storyboard instantiateViewControllerWithIdentifier:@"HomePage"];
    [self.navigationController pushViewController:objHome animated:YES];
}

-(IBAction)onClientFeedback:(id)sender
{
    ClientFeedbacks *objClientFb=[self.storyboard instantiateViewControllerWithIdentifier:@"ClientFeedbacks"];
    [self.navigationController pushViewController:objClientFb animated:YES];
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
