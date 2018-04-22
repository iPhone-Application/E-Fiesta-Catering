//
//  Reception.m
//  E-Fiesta
//
//  Created by PC-104 on 01/01/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import "Reception.h"

@interface Reception ()

@end

@implementation Reception

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
    
    UIImageView *ImgView=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT)];
    [ImgView sizeToFit];
    ImgView.image=[UIImage imageNamed:@"ReceptionBackground"];
    [self.tableView setBackgroundView:ImgView];

    [self setTitle:@"Reception"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    UIActionSheet *actSht=[[UIActionSheet alloc] initWithTitle:@"Please Select" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Predefined Package-Silver",@"Predefined Package-Gold",@"Customized Package", nil];
    [actSht showInView:self.view];
    
}

-(IBAction)onGuestClick:(id)sender
{
    UIActionSheet *actSht=[[UIActionSheet alloc] initWithTitle:@"Please Select" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"50-100",@"100-200",@"200-500",@"500-1000",@"1000-1500",@"1500-2000",@">2000",nil];
    [actSht showInView:self.view];
    
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex==0)
    {
        ReceptionPredefined *objReceptionPredefined=[self.storyboard instantiateViewControllerWithIdentifier:@"ReceptionPredefined"];
        [self.navigationController pushViewController:objReceptionPredefined animated:YES];
        
        
    }
    else if(buttonIndex==1)
    {
        CustomizedPackage *objCustomizedPackage=[self.storyboard instantiateViewControllerWithIdentifier:@"ReceptionPredefinedGold"];
        [self.navigationController pushViewController:objCustomizedPackage animated:YES];
    }

    else if(buttonIndex==2)
    {
        CustomizedPackage *objCustomizedPackage=[self.storyboard instantiateViewControllerWithIdentifier:@"CustomizedPackage"];
        [self.navigationController pushViewController:objCustomizedPackage animated:YES];
    }
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
