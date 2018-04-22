//
//  Menu.m
//  E-Fiesta
//
//  Created by PC-104 on 21/11/15.
//  Copyright (c) 2015 PC-104. All rights reserved.
//

#import "Menu.h"

@interface Menu ()

@end

@implementation Menu

- (void)viewDidLoad {
    [super viewDidLoad];
      [self.tableView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
 
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)onWedding:(id)sender
{
    Wedding *objWedding=[self.storyboard instantiateViewControllerWithIdentifier:@"Wedding"];
    [self.navigationController pushViewController:objWedding animated:YES];
    
}
-(IBAction)onGetTogether:(id)sender
{
    GetTogether *objGetTogether=[self.storyboard instantiateViewControllerWithIdentifier:@"GetTogether"];
    [self.navigationController pushViewController:objGetTogether animated:YES];
    
}
-(IBAction)onBirthdayParty:(id)sender
{
    BirthdayParty *objBirthdayParty=[self.storyboard instantiateViewControllerWithIdentifier:@"BirthdayParty"];
    [self.navigationController pushViewController:objBirthdayParty animated:YES];
    
}
-(IBAction)onCorporateParty:(id)sender
{
    CorporateParty *objCorporateParty=[self.storyboard instantiateViewControllerWithIdentifier:@"CorporateParty"];
    [self.navigationController pushViewController:objCorporateParty animated:YES];
    
}
-(IBAction)onReception:(id)sender
{
    Reception *objReception=[self.storyboard instantiateViewControllerWithIdentifier:@"Reception"];
    [self.navigationController pushViewController:objReception animated:YES];
    
}
-(IBAction)onGraduationParty:(id)sender
{
    GraduationParty *objGraduationParty=[self.storyboard instantiateViewControllerWithIdentifier:@"GraduationParty"];
    [self.navigationController pushViewController:objGraduationParty animated:YES];
    
}
-(IBAction)onCancelOrder:(id)sender
{
    CancelOrder *objCancelOrder=[self.storyboard instantiateViewControllerWithIdentifier:@"CancelOrder"];
    [self.navigationController pushViewController:objCancelOrder animated:YES];
    
}


#pragma mark - Table view data source


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
