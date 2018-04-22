//
//  GetTogetherPredefinedGold.m
//  E-Fiesta
//
//  Created by PC-104 on 26/02/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import "GetTogetherPredefinedGold.h"

@interface GetTogetherPredefinedGold ()

@end

@implementation GetTogetherPredefinedGold

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
    [arrdrink addObject:[NSArray arrayWithObjects:@" Family Friendly Sangria",@"Fruity, sparkling juice",@"family-sangria.png", nil]];
    [arrdrink addObject:[NSArray arrayWithObjects:@"Strawberry Citrus Slush",@"Flavors of grapefruit, lemon, ginger and strawberry",@"strawberry-citrus.png",nil]];
    
    //    starter
    arrstarter=[[NSMutableArray alloc]init];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Sprouted Channa Salad",@"Delicious looking & nutritious salad with sprouted channa",@"Sprouted Channa Salad.png", nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Mini Samosa",@"Spicy and crispy triangles stuffed with dry mixture of crushed gathiya, spices and dry fruits",@"Mini Samosa.png", nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Cocktail Kachori",@"Deep fried crispy & crunchy balls of maida flour is a scrumptious snack",@"Cocktail Kachori.png", nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Veg Manchurian",@"Indo chinese starter dish of fried veg balls in a spicy, sweet and tangy sauce",@"veg manchurian.png",nil]];
    
    //main course
    arrmaincourse=[[NSMutableArray alloc]init];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Aloo paratha",@"Paratha stuffed with potato",@"Aloo paratha.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Pav Bhaji",@"Vegetable curry served with soft bread roll",@"pavbhaji.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Semiya Biriyani",@"Extremely filling & satisfying dish made with vermicilli",@"Semiya Biriyani.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Veg Jalfraize",@"Juicy dish filled with veggies of high nutritional value",@"Veg Jalfraize.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Rajma",@"Rajma is an exquisite Indian vegetarian dish which has extreme flavor & a heavenly taste",@"Rajma.png", nil]];
    
    //    dessert
    arrdessert=[[NSMutableArray alloc]init];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Pot Kulfi",@"The ice mix, along with its submerged kulfi moulds, is placed in a matka",@"Pot Kulfi.png", nil]];
    
    [arrdessert addObject:[NSArray arrayWithObjects:@"Passion Fruit Cheesecake",@"Beautifully light and fresh, made with cream cheese and creme fraiche and fresh fruit in the mix",@"Passion Fruit Cheesecake.png",nil]];
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
    objUserInfo.strPackage=@"Get-Together Predefined-Silver";
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GetTogetherPredefinedScreenCell *Cell=[tableView dequeueReusableCellWithIdentifier:@"GetTogetherPredefinedScreenCell" forIndexPath:indexPath];
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
