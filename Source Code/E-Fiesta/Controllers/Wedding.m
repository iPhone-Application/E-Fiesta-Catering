//
//  Wedding.m
//  E-Fiesta
//
//  Created by PC-104 on 01/01/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import "Wedding.h"

@interface Wedding ()

@end

@implementation Wedding

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.tableView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
//   
    UIImageView *ImgView=[[UIImageView alloc] initWithFrame:CGRectMake(0, -20, 320, 480)];
    [ImgView sizeToFit];
    ImgView.image=[UIImage imageNamed:@"WeddingBackground.png"];
    [self.tableView setBackgroundView:ImgView];
    [self setTitle:@"Wedding"];

}

-(IBAction)onClick:(id)sender
{
    UIActionSheet *actSht=[[UIActionSheet alloc] initWithTitle:@"Please Select" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Predefined Package-Silver",@"Predefined Package-Gold",@"Customized Package", nil];
    [actSht setTag:1];
        [actSht showInView:self.view];
}


- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (actionSheet.tag==1)
    {
        if (buttonIndex==0)
        {
            WeddingPredefined *objWeddingPredefined=[self.storyboard instantiateViewControllerWithIdentifier:@"WeddingPredefined"];
            [self.navigationController pushViewController:objWeddingPredefined animated:YES];
            
        }
        else if(buttonIndex==1)
        {
            CustomizedPackage *objCustomizedPackage=[self.storyboard instantiateViewControllerWithIdentifier:@"WeddingPredefinedGold"];
            [self.navigationController pushViewController:objCustomizedPackage animated:YES];
        }
        else if(buttonIndex==2)
        {
            CustomizedPackage *objCustomizedPackage=[self.storyboard instantiateViewControllerWithIdentifier:@"CustomizedPackage"];
            [self.navigationController pushViewController:objCustomizedPackage animated:YES];
        }
        
    }
    else
    {
        
    }
    
}
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;


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
