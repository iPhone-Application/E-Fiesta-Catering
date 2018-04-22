//
//  BirthdayPredefined.m
//  E-Fiesta
//
//  Created by PC-104 on 08/01/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import "BirthdayPredefined.h"

@interface BirthdayPredefined ()

@end

@implementation BirthdayPredefined

- (void)viewDidLoad {
    [super viewDidLoad];
        [self.tableView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
    
    UILabel * titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(100,10,200,24)];
    titleLabel.backgroundColor = [UIColor clearColor];
    UIFont * customFont = [UIFont fontWithName:@"bader_al gordabia-2" size:15.0f];
    [titleLabel setFont:customFont];
    titleLabel.text = @"Price :: 500/-";
    //NSLog(@"%@", [customFont description]);
    
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor = [UIColor blackColor];
    [self.navigationItem setTitleView:titleLabel];
    
    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(0,0, 70,30)];
    [btn setTitle:@"Proceed" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onDoneClick:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *btnItem=[[UIBarButtonItem alloc] initWithCustomView:btn];
    [self.navigationItem setRightBarButtonItem:btnItem];
    
    arrdrink=[[NSMutableArray alloc]init];
//    drinks
    [arrdrink addObject:[NSArray arrayWithObjects:@"Strawberry Citrus Slush",@"Flavors of grapefruit, lemon, ginger and strawberry",@"strawberry-citrus.png", nil]];
    [arrdrink addObject:[NSArray arrayWithObjects:@"Smoothies",@"Favorite fruit and juice combinations",@"smoothies.png", nil]];
  
    
//eatery
     arreatery=[[NSMutableArray alloc]init];
    [arreatery addObject:[NSArray arrayWithObjects:@"Chole Bhature",@"Combination of chana masala and fried batura",@"cholebature.png", nil]];
    [arreatery addObject:[NSArray arrayWithObjects:@"Pav Bhaji",@"Vegetable curry served with soft bread roll",@"pavbhaji.png", nil]];
    [arreatery addObject:[NSArray arrayWithObjects:@"Potato Chips",@"Thin slice of potato that has been deep fried, baked untill crunchy",@"chips.png", nil]];
     [arreatery addObject:[NSArray arrayWithObjects:@"Cheese Pizza",@"Shredded mozzarella cheese, pepperoni,thinly sliced green pepper, sliced olives,chopped onion",@"cheesepizza.png", nil]];
     [arreatery addObject:[NSArray arrayWithObjects:@"Chocolate Cake",@"Cake flavored with melted chocolate and cocoa powder",@"cake.png", nil]];
     [arreatery addObject:[NSArray arrayWithObjects:@"Icecream",@"Smooth, sweet, cold, frozen mixture of milk and flavorings",@"icecream.png", nil]];
    
  }
-(IBAction)onDoneClick:(id)sender
{
    UserInformation *objUserInfo=[self.storyboard instantiateViewControllerWithIdentifier:@"UserInformation"];
    [self.navigationController pushViewController:objUserInfo animated:YES];
    objUserInfo.strPrice=@"500";
    objUserInfo.strPackage=@"Birthday Party Predefined-Silver";

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0)
    {
        return arrdrink.count;
    }
    else
    {
        return arreatery.count;
    }
}
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section==0)
    {
        return @"Drink";
    }
    else
    {
        return @"Eatery";
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BirthdayPredefinedScreenCell *Cell=[tableView dequeueReusableCellWithIdentifier:@"BirthdayPredefinedScreenCell" forIndexPath:indexPath];
    if (Cell==nil)
    {
        
    }
    NSMutableArray *myArr=[[NSMutableArray alloc] init];
    if (indexPath.section==0)
    {
        myArr=arrdrink;
    }
      else
    {
        myArr= arreatery;
    }
    Cell.lblTitle.text=[[myArr objectAtIndex:indexPath.row] objectAtIndex:0];
    Cell.lblTitle.numberOfLines=0;
    [Cell.lblTitle sizeToFit];
    Cell.lblDesc.text=[[myArr objectAtIndex:indexPath.row] objectAtIndex:1];
    Cell.lblDesc.numberOfLines=0;
    [Cell.lblDesc sizeToFit];
    Cell.imgItemIcon.image=[UIImage imageNamed:[[myArr objectAtIndex:indexPath.row] objectAtIndex:2]];
    Cell.imgItemIcon.layer.masksToBounds=YES;
    Cell.imgItemIcon.layer.cornerRadius=50.0f;
    
    
    return Cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
//    return 0;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
//    return 0;
//}

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
