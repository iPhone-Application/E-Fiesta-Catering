//
//  ReceptionPredefinedGold.m
//  E-Fiesta
//
//  Created by PC-104 on 26/02/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import "ReceptionPredefinedGold.h"

@interface ReceptionPredefinedGold ()

@end

@implementation ReceptionPredefinedGold

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
    
    UILabel * titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(100,10,200,24)];
    titleLabel.backgroundColor = [UIColor clearColor];
    UIFont * customFont = [UIFont fontWithName:@"bader_al gordabia-2" size:15.0f];
    [titleLabel setFont:customFont];
    titleLabel.text = @"Price :: 2000/-";
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
    
    arrdrinks=[[NSMutableArray alloc]init];
    //    drinks
    [arrdrinks addObject:[NSArray arrayWithObjects:@"Strawberry Citrus Slush",@"Flavors of grapefruit, lemon, ginger and strawberry",@"strawberry-citrus.png", nil]];
    [arrdrinks addObject:[NSArray arrayWithObjects:@"Smoothies",@"Favorite fruit and juice combinations",@"smoothies.png", nil]];
    [arrdrinks addObject:[NSArray arrayWithObjects:@"Cranberry Punch",@"Cranberry with soda",@"cranberry-punch.png",nil]];
    
    //    soup
    arrsoup=[[NSMutableArray alloc]init];
    [arrsoup addObject:[NSArray arrayWithObjects:@"Sweet Corn Soup",@"Crushed and whole sweet corn comes together with a colourful assortment of juicy vegetables",@"Sweet Corn Soup.png", nil]];
    [arrsoup addObject:[NSArray arrayWithObjects:@"Manchow Soup",@"Indian Chinese cuisine with hot spicy taste",@"Manchow Soup.png", nil]];
    [arrsoup addObject:[NSArray arrayWithObjects:@"Roasted Tomato Soup",@"Sweetness of the carrots and onions along with slight tanginess of tomatoes",@"Tomatosoup.png",nil]];
    
    //starter
    arrstarter=[[NSMutableArray alloc]init];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Veg Manchurian",@"Indo chinese starter dish of fried veg balls in a spicy, sweet and tangy sauce",@"veg manchurian.png", nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Nachos",@"Nachos with a layering of ground beef, refried beans, Cheddar cheese, olives",@"Nachos.png", nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Garlic bread",@"Bread topped with garlic and olive oil or butter and includes additional herbs, like chives",@"Garlic bread.png", nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Authentic Italian Pizza",@"Made with San Marzano tomatoes and mozzarella cheese",@"Italian Pizza.png", nil]];
    
    //    main course
    arrmaincourse=[[NSMutableArray alloc]init];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Russian Salad",@"Made with diced boiled potatoes, carrots, green peas,celeriac, onions,tart apples, with salt, pepper, and mustard added to enhance flavor, dressed with mayonnaise",@"Russian Salad.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Tandoori Roti",@"Flatbread recipe traditionally made in tandoor",@"Tandoori Roti.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Paneer Kulcha",@"Refined flour kulcha stuffed with cottage cheese and paneer",@"Paneer Kulcha.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Paneer Makhni",@"Paneer cubes cooked in basic makhani gravy",@"Paneer Makhni.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Navratna Kurma",@"Nine of the vegetable, nuts, and paneer",@"Navratna Kurma.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Malai Kofta"
                         ,@"Chocolate milk, ice cream and root beer",@"Malai Kofta.png",nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Palak Paneer Pulav",@"Packs the nutrition of spinach & taste of paneer",@"Palak Paneer Pulav.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Corn Capsicum Pulav",@"Colorful & flavorful mix of corn and capsicum",@"Corn Capsicum Pulav.png", nil]];
    
    //    dessert
    arrdessert=[[NSMutableArray alloc]init];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Apple Halwa",@"A lip smacking dessert with the goodness of apple",@"Apple Halwa.png", nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Badam Cassata",@"Creamy dessert that is served chill",@"Badam Cassata.png", nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Cadburry Roll",@"Made with the smooth taste of Cadbury chocolate, combined with a chocolate sponge and a delicious vanilla creme",@"Cadburry Roll.png", nil]];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0)
    {
        return arrdrinks.count;
    }
    else if (section==1)
    {
        return arrsoup.count;
    }
    else if (section==2)
    {
        return arrstarter.count;
    }
    else if (section==3)
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
        return @"Drinks";
    }
    else if (section==1)
    {
        return @"Soup";
    }
    else if (section==2)
    {
        return @"Starter";
    }
    else if (section==3)
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
    objUserInfo.strPrice=@"2000";
    objUserInfo.strPackage=@"Reception Predefined-Silver";
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ReceptionPredefinedScreenCell *Cell=[tableView dequeueReusableCellWithIdentifier:@"ReceptionPredefinedScreenCell" forIndexPath:indexPath];
    if (Cell==nil)
    {
        
    }
    NSMutableArray *myArr=[[NSMutableArray alloc] init];
    if (indexPath.section==0)
    {
        myArr=arrdrinks;
    }
    else if (indexPath.section==1)
    {
        myArr= arrsoup;
    }
    else if (indexPath.section==2)
    {
        myArr= arrstarter;
    }
    else if (indexPath.section==3)
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
