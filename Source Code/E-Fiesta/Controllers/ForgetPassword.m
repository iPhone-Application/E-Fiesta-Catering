//
//  ForgetPassword.m
//  E-Fiesta
//
//  Created by iFlame. on 26/03/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import "ForgetPassword.h"

@interface ForgetPassword ()

@end

@implementation ForgetPassword

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"Forgot Password";
    [self.tableView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onSave:(UIButton *)sender
{
    if ([txtUsername.text isEqualToString:@""])
    {
        [@"Please enter Username" showAlert];
        return;
    }
       else if ([txtEmailID.text isEqualToString:@""])
    {
        [@"Please enter EmailID" showAlert];
        return;
    }
       else if ([txtPassword.text isEqualToString:@""])
    {
        [@"Please enter Password" showAlert];
        return;
    }
    else if ([txtConfirmPassword.text isEqualToString:@""])
    {
        [@"Please enter Confirm password" showAlert];
        return;
    }
    else if ([txtConfirmPassword.text isEqualToString:txtPassword.text]== FALSE)
    {
        txtConfirmPassword.text=@"";
        [@"Confirm password does not match Password" showAlert];
        return;
    }
    else if (![self validateEmailWithString:[txtEmailID text]])
    {
        txtEmailID.text=@"";
        [@"Please enter valid emailID" showAlert];
        return;
    }
    else
    {
       BOOL result=[DBShareObj checkIsUserForForgetPwd:txtUsername.text :txtPassword.text :txtEmailID.text];
        if (result==YES)
        {
            LoginPage  *objLogin=[self.storyboard instantiateViewControllerWithIdentifier:@"LoginPage"];
            [self.navigationController pushViewController:objLogin animated:YES];
        }
        else
        {
            UIAlertView *alt=[[UIAlertView alloc] initWithTitle:@"E-Fiesta" message:@"Sorry Your Username or Email is wrong" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
            [alt show];
        }
       
    }
    
}

- (BOOL)validateEmailWithString:(NSString*)email
{
    NSString *emailRegex = @"^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
    
}
-(IBAction)onCancel:(id)sender{
    
    LoginPage  *objLogin=[self.storyboard instantiateViewControllerWithIdentifier:@"LoginPage"];
    [self.navigationController pushViewController:objLogin animated:YES];
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
