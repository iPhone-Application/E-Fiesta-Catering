//
//  WeddingPredefinedGold.m
//  E-Fiesta
//
//  Created by PC-104 on 26/02/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import "WeddingPredefinedGold.h"

@interface WeddingPredefinedGold ()

@end

@implementation WeddingPredefinedGold

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
    
    
    UILabel * titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(100,10,200,24)];
    titleLabel.backgroundColor = [UIColor clearColor];
    UIFont * customFont = [UIFont fontWithName:@"bader_al gordabia-2" size:15.0f];
    [titleLabel setFont:customFont];
    titleLabel.text = @"Price :: 1500/-";
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
    
    
    arrsoup=[[NSMutableArray alloc]init];
    [arrsoup addObject:[NSArray arrayWithObjects:@"Garden Vegetable Soup",@"Vegetable soup made with veggies,chillies and black pepper",@"VegetableSoup.png", nil]];
    [arrsoup addObject:[NSArray arrayWithObjects:@"Roasted Tomato Soup",@"Sweetness of the carrots and onions along with slight tanginess of tomatoes",@"Tomatosoup.png", nil]];
    [arrsoup addObject:[NSArray arrayWithObjects:@"Sweet Corn Soup",@"Crushed and whole sweet corn comes together with a colourful assortment of juicy vegetables",@"Sweet Corn Soup.png",nil]];

    
    arrstarter=[[NSMutableArray alloc]init];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Avocado Pomegranate Crostini",@"Avocado and pomegranate create the perfect combination of savory and sweet",@"Avocado Pomegranate Crostini.png", nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Cream Cheese, And Salsa-Stuffed Puff",@"Cheese, Flaky crust stuffed in puff",@"Salsa-Stuffed Puff.png", nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Vegetarian Spaghetti",@"A delicious easy spaghetti meal made stir fried style with vegetables",@"Vegetarian Spaghetti.png", nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Vegan Lasagna With Basil Cashew Cheese",@"Lasagne with tender vegetables, a light tomato sauce and lots of basil cashew cheese",@"Vegan Lasagna.png", nil]];
    
    arrmaincourse=[[NSMutableArray alloc]init];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Salad",@"Fresh fruits and green leafy vegetables",@"salad.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Naan",@"Naan is a leavened, oven-baked flatbread ",@"Naan.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Roti",@"Made from stoneground wholemeal flour with ghee",@"roti.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Paneer Makhni",@"Paneer cubes cooked in basic makhani gravy",@"Paneer Makhni.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Malai Kofta"
                              ,@"Chocolate milk, ice cream and root beer",@"Malai Kofta.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Navratna Kurma",@"Nine of the vegetable, nuts, and paneer",@"Navratna Kurma.png",nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Kashmiri Pulav",@"Pulav with a mix of almonds, raisins, pistachios, walnuts and cashews",@"Kashmiri Pulav.png", nil]];
    [arrmaincourse addObject:[NSArray arrayWithObjects:@"Dal Makhani",@"It is a mixed lentil curry made with lots of butter and cream",@"Dal Makhani.png", nil]];
     [arrmaincourse addObject:[NSArray arrayWithObjects:@"Veg Jalfraize",@"Juicy dish filled with veggies of high nutritional value",@"Veg Jalfraize.png",nil]];
    
    
    arrdessert=[[NSMutableArray alloc]init];
    
    [arrdessert addObject:[NSArray arrayWithObjects:@"Gulab jamun",@"Milk-solids-based dessert",@"Gulab jamun.png", nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Angoor Basundi",@"Made just like Ras malai but Gullas are almost grape size",@"Angoor Basundi.png", nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Chocolate mousse",@"Chocolate mousse in shallow cups, garnished with ground cinnamon",@"Chocolate mousse.png", nil]];
    
    
}
-(IBAction)onDoneClick:(id)sender
{
    UserInformation *objUserInfo=[self.storyboard instantiateViewControllerWithIdentifier:@"UserInformation"];
    objUserInfo.strPrice=@"1500";
    objUserInfo.strPackage=@"Wedding Predefined-Silver";
    
    [self.navigationController pushViewController:objUserInfo animated:YES];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0)
    {
        return arrsoup.count;
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
        return @"Soup";
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
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WeddingPredefinedScreenCell *Cell=[tableView dequeueReusableCellWithIdentifier:@"WeddingPredefinedScreenCell" forIndexPath:indexPath];
    if (Cell==nil)
    {
        
    }
    NSMutableArray *myArr=[[NSMutableArray alloc] init];
    if (indexPath.section==0)
    {
        myArr=arrsoup;
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
