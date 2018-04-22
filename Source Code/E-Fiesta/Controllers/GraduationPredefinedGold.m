//
//  GraduationPredefinedGold.m
//  E-Fiesta
//
//  Created by PC-104 on 26/02/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import "GraduationPredefinedGold.h"

@interface GraduationPredefinedGold ()

@end

@implementation GraduationPredefinedGold

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
    
    
    UILabel * titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(100,10,200,24)];
    titleLabel.backgroundColor = [UIColor clearColor];
    UIFont * customFont = [UIFont fontWithName:@"bader_al gordabia-2" size:15.0f];
    [titleLabel setFont:customFont];
    titleLabel.text = @"Price :: 900/-";
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
    [arrdrink addObject:[NSArray arrayWithObjects:@"Cranberry Punch",@"Cranberry with soda",@"cranberry-punch.png", nil]];
    [arrdrink addObject:[NSArray arrayWithObjects:@"Sparkling Raspberry Tea",@"Fizz, fruit and tea",@"raspberry-sparkler.png",nil]];
    
    //    starter
    arrstarter=[[NSMutableArray alloc]init];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Apple Cucumber Salad",@"crunchy & pleasant tasting salad with apples and cucumber",@"Apple Cucumber Salad.png", nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Ragda patties",@"Chaat including ragda and roasted patties",@"ragda patties.png", nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Nachos",@"Nachos with a layering of ground beef, refried beans, Cheddar cheese, olives",@"Nachos.png",nil]];
    
    //main course
    arrmaincourse=[[NSMutableArray alloc]init];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Chole Bhature",@"Combination of chana masala and fried batura",@"cholebature.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Tandoori Roti",@"Flatbread recipe traditionally made in tandoor",@"Tandoori Roti.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Mixed Veg paratha",@"Paratha stuffed with mixed vegetable",@"Mixed Veg paratha.png",nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Paneer Makhni",@"Paneer cubes cooked in basic makhani gravy",@"Paneer Makhni.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Garlic Mushroom Fried Rice",@"Extremely flavorful meal that is highly enticing & alluring",@"Garlic Mushroom Fried Rice.png", nil]];
    
    //    dessert
    arrdessert=[[NSMutableArray alloc]init];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Icecream Sandwich",@"Uniquely designed ice cream that is highly luscious & creamy",@"Sandwich.png", nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Faluda",@"Mix of layers of ice cream & jello’s which is extremely sweet",@"Faluda.png", nil]];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0)
    {
        return arrdrink.count;
    }
    else if (section==1)
    {
        return arrstarter.count;
    }
    else if (section==2)
    {
        return arrmaincourse.count;
    }
    else
    {
        return arrdessert.count;
    }
}
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section==0)
    {
        return @"Drink";
    }
    else if (section==1)
    {
        return @"Starter";
    }
    else if (section==2)
    {
        return @"Maincourse";
    }
    else
    {
        return @"Dessert";
    }
}
-(IBAction)onDoneClick:(id)sender
{
    UserInformation *objUserInfo=[self.storyboard instantiateViewControllerWithIdentifier:@"UserInformation"];
    [self.navigationController pushViewController:objUserInfo animated:YES];
    objUserInfo.strPrice=@"900";
    objUserInfo.strPackage=@"Graduation Party Predefined-Silver";
   // AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
   // appDelegate.str = strFinalPrice;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GraduationPredefinedScreenCell *Cell=[tableView dequeueReusableCellWithIdentifier:@"GraduationPredefinedScreenCell" forIndexPath:indexPath];
    if (Cell==nil)
    {
        
    }
    NSMutableArray *myArr=[[NSMutableArray alloc] init];
    if (indexPath.section==0)
    {
        myArr=arrdrink;
    }
    else if (indexPath.section==1)
    {
        myArr= arrstarter;
    }
    else if (indexPath.section==2)
    {
        myArr= arrmaincourse;
    }
    else
    {
        myArr= arrdessert;
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
