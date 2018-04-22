//
//  CustomizedPackage.m
//  E-Fiesta
//
//  Created by PC-104 on 07/01/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import "CustomizedPackage.h"
#import "AppDelegate.h"
@interface CustomizedPackage ()

@end

@implementation CustomizedPackage
NSMutableArray *SelectedItemArr;
NSInteger SemiFinalPrice;
NSInteger FinalPrice;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SelectedItemArr=[[NSMutableArray alloc] init];
    SemiFinalPrice=0;
    FinalPrice=0;


        [self.tableView setBackgroundColor:[UIColor colorWithRed:215/255.0f green:214/255.0f blue:209/255.0f alpha:1.0f]];
    
    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(0,0, 70,30)];
    [btn setTitle:@"Done" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onDoneClick:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *btnItem=[[UIBarButtonItem alloc] initWithCustomView:btn];
    [self.navigationItem setRightBarButtonItem:btnItem];

    arrBtnTag=[[NSMutableArray alloc] init];
    arrdrink=[[NSMutableArray alloc]init];
    
    [arrdrink addObject:[NSArray arrayWithObjects:@"Watermelon Lemonade With Kiwifruit Splash",@"Fresh watermelon and kiwi lemonade",@"watermelon-kiwifruit.png",@"35",nil]];
     [arrdrink addObject:[NSArray arrayWithObjects:@"Strawberry Citrus Slush",@"Flavors of grapefruit, lemon, ginger and strawberry",@"strawberry-citrus.png",@"40",nil]];
     [arrdrink addObject:[NSArray arrayWithObjects:@" Virgin Merry Mimosas",@"Berry and orange drink with sparkling grape juice ",@"merry-mimosa.png",@"40",nil]];
     [arrdrink addObject:[NSArray arrayWithObjects:@" Iced Vanilla Soy Latte",@"Vanilla Coffee",@"vanilla-soy-coffee.png",@"45",nil]];
     [arrdrink addObject:[NSArray arrayWithObjects:@"Arnold Palmer",@"Combination of lemonade and iced tea",@"arnie-palmer.png",@"35",nil]];
     [arrdrink addObject:[NSArray arrayWithObjects:@"Shirley Temple",@"Ginger ale, a splash of orange juice and a drizzle of grenadine",@"shirley-temple.png",@"40",nil]];
     [arrdrink addObject:[NSArray arrayWithObjects:@" Family Friendly Sangria",@"Fruity, sparkling juice",@"family-sangria.png",@"40",nil]];
     [arrdrink addObject:[NSArray arrayWithObjects:@"Sparkling Raspberry Tea",@"Fizz, fruit and tea",@"raspberry-sparkler.png",@"40",nil]];
     [arrdrink addObject:[NSArray arrayWithObjects:@"Super Energy Drink",@"Energy boosting smoothies combining sweet oranges, honey and vanilla yogurt",@"energy-drink.png",@"45",nil]];
     [arrdrink addObject:[NSArray arrayWithObjects:@"Smoothies",@"Favorite fruit and juice combinations",@"smoothies.png",@"40",nil]];
    [arrdrink addObject:[NSArray arrayWithObjects:@"Blueberry Lemonade",@"Lemon, soda, fresh blueberries ",@"blueberry-lemonade.png",@"50",nil]];
    [arrdrink addObject:[NSArray arrayWithObjects:@"Peach Daiquiri Punch",@"Favorite syrup, juice or soda",@"peach-daiquiri.png",@"50",nil]];
    [arrdrink addObject:[NSArray arrayWithObjects:@"Bubbly Lemonade",@"Lemon-lime soda",@"bubbly-lemonade.png",@"35",nil]];
    [arrdrink addObject:[NSArray arrayWithObjects:@"Ultimate Summer Picnic Punch",@"Fresh flavors of strawberry, watermelon and lemon",@"summer-punch.png",@"40",nil]];
    [arrdrink addObject:[NSArray arrayWithObjects:@"Cranberry Punch",@"Cranberry with soda",@"cranberry-punch.png",@"40",nil]];
    [arrdrink addObject:[NSArray arrayWithObjects:@"Fancy Coffee Drink",@"Coffee based beverages",@"fancy-coffee-drink.png",@"42",nil]];
    [arrdrink addObject:[NSArray arrayWithObjects:@"Mud Soda",@"Chocolate milk, ice cream and root beer",@"mud-sodas.png",@"45",nil]];
//    soup
     arrsoup=[[NSMutableArray alloc]init];
    [arrsoup addObject:[NSArray arrayWithObjects:@"Garden Vegetable Soup",@"Vegetable soup made with veggies,chillies and black pepper",@"VegetableSoup.png",@"60",nil]];
    [arrsoup addObject:[NSArray arrayWithObjects:@"Roasted Tomato Soup",@"Sweetness of the carrots and onions along with slight tanginess of tomatoes",@"Tomatosoup.png",@"50",nil]];
    [arrsoup addObject:[NSArray arrayWithObjects:@"Sweet Corn Soup",@"Crushed and whole sweet corn comes together with a colourful assortment of juicy vegetables",@"Sweet Corn Soup.png",@"65",nil]];
    [arrsoup addObject:[NSArray arrayWithObjects:@"Manchow Soup",@"Indian Chinese cuisine with hot spicy taste",@"Manchow Soup.png",@"70",nil]];
//   starter
    arrstarter=[[NSMutableArray alloc]init];
       [arrstarter addObject:[NSArray arrayWithObjects:@"Apple Cucumber Salad",@"crunchy & pleasant tasting salad with apples and cucumber",@"Apple Cucumber Salad.png",@"30",nil]];
     [arrstarter addObject:[NSArray arrayWithObjects:@"Imported fruit salads",@"made of exquisite fruits that tastes extremely juicy & luscious",@"Imported fruit salads.png",@"35",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Sprouted Channa Salad",@"Delicious looking & nutritious salad with sprouted channa",@"Sprouted Channa Salad.png",@"40",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Mini Samosa",@"Spicy and crispy triangles stuffed with dry mixture of crushed gathiya, spices and dry fruits",@"Mini Samosa.png",@"60",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Cocktail Kachori",@"Deep fried crispy & crunchy balls of maida flour is a scrumptious snack",@"Cocktail Kachori.png",@"60",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Ragda patties",@"Chaat including ragda and roasted patties",@"ragda patties.png",@"75",nil]];
      [arrstarter addObject:[NSArray arrayWithObjects:@"Suran Fodi",@"Semolina crusted sliced yam",@"Suran_Fodi.png",@"65",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Veg Manchurian",@"Indo chinese starter dish of fried veg balls in a spicy, sweet and tangy sauce",@"veg manchurian.png",@"80",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Nachos",@"Nachos with a layering of ground beef, refried beans, Cheddar cheese, olives",@"Nachos.png",@"80",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Garlic bread",@"Bread topped with garlic and olive oil or butter and includes additional herbs, like chives",@"Garlic bread.png",@"75",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Authentic Italian Pizza",@"Made with San Marzano tomatoes and mozzarella cheese",@"Italian Pizza.png",@"85",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Spaghetti with Lemon and Black Pepper Crumb",@"Mediterranean recipe using tinned sardines",@"Spaghetti.png",@"90",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Aloo Took",@"Double Fried chunks of potato",@"Aloo_Took.png",@"55",nil]];
      [arrstarter addObject:[NSArray arrayWithObjects:@"Falahari Rajgira Aloo Tikki",@"Aloo Tikki made up of Amarnath flour",@"Rajgira_Aloo_Tikki.png",@"60",nil]];
      [arrstarter addObject:[NSArray arrayWithObjects:@"Paneer Bread Balls",@"Cottage cheese and bread",@"Paneer_Bread_Balls.png",@"60",nil]];
      [arrstarter addObject:[NSArray arrayWithObjects:@"Makhmali Rajma Kebab",@"Soft and spicy kebabs made with soft boiled red kidney beans",@"Makhmali_Rajma_Kofta.png",@"75",nil]];
      [arrstarter addObject:[NSArray arrayWithObjects:@"Mushroom, Paneer And Soya Chunk Samosa",@"Samosas of minced mushrooms, paneer and soya chunks",@"Samosas_with_Minced_Mushroom_Paneer_and_Soya_chunks.png",@"90",nil]];
      [arrstarter addObject:[NSArray arrayWithObjects:@"Sweet Corn Oats Masala Vada",@"Sweet corn,oats,some spices fried to golden perfection",@"Sweet_Corn_Oats_Fritters.png",@"60",nil]];
      [arrstarter addObject:[NSArray arrayWithObjects:@"Mushrooms On Toast",@"Sliced bread that is topped with bechamel sauce, mushrooms and cheese",@"Mushroom_on_Toast.png",@"70",nil]];
    
    [arrstarter addObject:[NSArray arrayWithObjects:@"Peanut Chaat With Spiced Yogurt",@"Chaat with protein-rich peanuts, spiced with a flavoured yogurt ",@"Peanut_chaat.png",@"50",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Savory Tart",@"Savory and delectable sweet flavors with addition of grapes, black olives and two varieties of cheese",@"Savory_Tart.png",@"55",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Mixed Vegetable Noodle Cutlet",@"Combination of noodles along with the vegetables",@"Mixed_Vegetable_Noodle_Cutlet.png",@"65",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Tandoori Gobi Tikka",@"Combination of hung curd, along with spices like ajwain, chaat masala and kasuri methi",@"Tandoori_Gobi_Tikka.png",@"65",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Achari Paneer Tikka",@"Paneer cubes marinated in an achari marinade",@"paneer-tikka.png",@"70",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Kakori Kebabs",@"Lucknowi Kebabs",@"kakori-kebabs.png",@"50",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Aloo ki Tikki",@"Bite-sized crisp potato and channa dal tikkis served with a dollop of chutney",@"aloo-tikki.png",@"50",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Cheese Balls",@"Outstanding cheese balls are all about the crunch and so sinful yet simple",@"cheese-balls.png",@"80",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Chicken Satay",@" A Thai appetizer that’s delicious and pairs perfectly with a tangy peanut sauce",@"chicken-satay.png",@"85",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Garlic & Pepper Mushroom Stir Fry",@"Served over toast or along with crusty bread on the side",@"Garlicky_Pepper_Mushroom_Stir_Fry.png",@"65",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Lobia Kebabs",@"Black Eyed Bean Patties",@"Lobia_Kebabs.png",@"60",nil]];
    [arrstarter addObject:[NSArray arrayWithObjects:@"Rajma Galouti Kebab",@"Soft cooked rajma, along with the potatoes and the paneer",@"Rajma_Veg_Galouti_Kebab.png",@"60",nil]];
//   paratha
    arrparatha=[[NSMutableArray alloc]init];
    [arrparatha addObject:[NSArray arrayWithObjects:@"Naan",@"Naan is a leavened, oven-baked flatbread ",@"Naan.png",@"25",nil]];
    [arrparatha addObject:[NSArray arrayWithObjects:@"Roti",@"Made from stoneground wholemeal flour with ghee",@"roti.png",@"15",nil]];
    [arrparatha addObject:[NSArray arrayWithObjects:@"Aloo gobi paratha",@"Paratha stuffed with potato and cauliflower",@"aloo gobi paratha.png",@"30",nil]];
    [arrparatha addObject:[NSArray arrayWithObjects:@"Aloo paratha",@"Paratha stuffed with potato",@"Aloo paratha.png",@"25",nil]];
    [arrparatha addObject:[NSArray arrayWithObjects:@"Cabbage paratha",@"Paratha stuffed with cabbage",@"Cabbage paratha.png",@"25",nil]];
    [arrparatha addObject:[NSArray arrayWithObjects:@"Carrot cheese paratha",@"Paratha stuffed with carrot and cheese",@"carrot cheese paratha.png",@"25",nil]];
    [arrparatha addObject:[NSArray arrayWithObjects:@"Carrot peas paratha",@"Paratha stuffed with carrot and peas",@"carrotpeasparatha.png",@"25",nil]];
      [arrparatha addObject:[NSArray arrayWithObjects:@"Masala chapathi",@"Flavoured masala and herbs chapathi",@"masala chapathi.png",@"20",nil]];
    [arrparatha addObject:[NSArray arrayWithObjects:@"Masala palak paratha",@"Paratha stuffed with masala and spinach",@"masala palak paratha.png",@"25",nil]];
    [arrparatha addObject:[NSArray arrayWithObjects:@"Methi thepla",@"Gujarati dish",@"methi thepla.png",@"15",nil]];
    [arrparatha addObject:[NSArray arrayWithObjects:@"Mixed Veg paratha",@"Paratha stuffed with mixed vegetable",@"Mixed Veg paratha.png",@"35",nil]];
    [arrparatha addObject:[NSArray arrayWithObjects:@"Mooli paratha",@"Paratha stuffed with mooli",@"Mooli paratha.png",@"25",nil]];
    [arrparatha addObject:[NSArray arrayWithObjects:@"Peas paratha",@"Paratha stuffed with peas",@"Peas paratha.png",@"25",nil]];
      [arrparatha addObject:[NSArray arrayWithObjects:@"Rajma paratha",@"Paratha stuffed with rajma",@"Rajma paratha.png",@"30",nil]];
    [arrparatha addObject:[NSArray arrayWithObjects:@"Tandoori Roti",@"Flatbread recipe traditionally made in tandoor",@"Tandoori Roti.png",@"22",nil]];
    [arrparatha addObject:[NSArray arrayWithObjects:@"Paneer Kulcha",@"Refined flour kulcha stuffed with cottage cheese and paneer",@"Paneer Kulcha.png",@"40",nil]];
    
//    sabzi
    arrsabzi=[[NSMutableArray alloc]init];
    [arrsabzi addObject:[NSArray arrayWithObjects:@"Aloo ki Sabzi",@"Simple yet delicious Potato vegetable",@"Aloo-ki-Sabzi.png",@"50",nil]];
    [arrsabzi addObject:[NSArray arrayWithObjects:@"Baked Baby Potatoes with Lime Mayonnaise",@"Baked Baby Potatoes with Lime Mayonnaise",@"Baked-Baby-Potatoes-with-Lime-Mayonnaise.png",@"55",nil]];
    [arrsabzi addObject:[NSArray arrayWithObjects:@"Bhindi ki Sabzi",@"Simple yet delicious ladyfinger vegetable",@"Bhindi-ki-Sabzi.png",@"42",nil]];
    [arrsabzi addObject:[NSArray arrayWithObjects:@"Chana Dal aur Soya Wadi ki Sabzi",@"Simple yet delicious chana dal vegetable",@"Chana-Dal-aur-Soya-Wadi-ki-Sabzi.png",@"35",nil]];
    [arrsabzi addObject:[NSArray arrayWithObjects:@"Malai Kofta"
                              ,@"Chocolate milk, ice cream and root beer",@"Malai Kofta.png",@"60",nil]];
    [arrsabzi addObject:[NSArray arrayWithObjects:@"Dal Makhani",@"It is a mixed lentil curry made with lots of butter and cream",@"Dal Makhani.png",@"60",nil]];
    [arrsabzi addObject:[NSArray arrayWithObjects:@"Chole Chana Dal",@"Chickpeas and chanadal cooked with chole masala",@"Chole-Chana-Dal.png",@"55",nil]];
    [arrsabzi addObject:[NSArray arrayWithObjects:@"Paneer Makhni",@"Paneer cubes cooked in basic makhani gravy",@"Paneer Makhni.png",@"80",nil]];
    [arrsabzi addObject:[NSArray arrayWithObjects:@"Creamy Mushroom",@"Mushroom with cream",@"Creamy-Mushroom.png",@"80",nil]];
    [arrsabzi addObject:[NSArray arrayWithObjects:@"Dahi ki Sabzi",@"Yogurt cooked with few masala",@"Dahi-ki-Sabzi.png",@"35",nil]];
    [arrsabzi addObject:[NSArray arrayWithObjects:@"French Beans with Moong Dal",@"French beans and moong dal cooked with some spices",@"French-Beans-with-Moong-Dal.png",@"55",nil]];
    [arrsabzi addObject:[NSArray arrayWithObjects:@"Garlic Grilled Tomatoes",@"Half tomatoes marinated with garlic and olive oil",@"Garlic-Grilled-Tomatoes.png",@"40",nil]];
    [arrsabzi addObject:[NSArray arrayWithObjects:@"Green Peas Mash",@"Green Peas Mash",@"Green-Peas-Mash.png",@"40",nil]];
    [arrsabzi addObject:[NSArray arrayWithObjects:@"Lauki Kiwi Masala",@"Combination of bottleguard and kiwis",@"Lauki-Kiwi-Masala.png",@"50",nil]];
    [arrsabzi addObject:[NSArray arrayWithObjects:@"Shahi Paneer",@"Grated paneer with gravy",@"Shahi-Paneer.png",@"73",nil]];
        [arrsabzi addObject:[NSArray arrayWithObjects:@"Vatana Batata Cauliflower Sukke",@"Green peas, potato and cauliflower cooked in coconut masala",@"Vatana-Batata-Cauliflower-Sukke.png",@"55",nil]];
        [arrsabzi addObject:[NSArray arrayWithObjects:@"Titori",@"Spicy dish made of sprouted field beans and a medley of Indian masalas",@"Titori.png",@"50",nil]];
     [arrsabzi addObject:[NSArray arrayWithObjects:@"Rajma",@"Rajma is an exquisite Indian vegetarian dish which has extreme flavor & a heavenly taste",@"Rajma.png",@"55",nil]];
     [arrsabzi addObject:[NSArray arrayWithObjects:@"Vegan Potato Curry",@"Extremely spicy vegan potato vegetable",@"Vegan potato curry.png",@"57",nil]];
     [arrsabzi addObject:[NSArray arrayWithObjects:@"Navratna Kurma",@"Nine of the vegetable, nuts, and paneer",@"Navratna Kurma.png",@"80",nil]];
    
//    rice
      arrrice=[[NSMutableArray alloc]init];
    [arrrice addObject:[NSArray arrayWithObjects:@"Plain Rice",@"Plain rice",@"rice.png",@"40",nil]];
    [arrrice addObject:[NSArray arrayWithObjects:@"Kashmiri Pulav",@"Pulav with a mix of almonds, raisins, pistachios, walnuts and cashews",@"Kashmiri Pulav.png",@"90",nil]];
    [arrrice addObject:[NSArray arrayWithObjects:@"Semiya Biriyani",@"Extremely filling & satisfying dish made with vermicilli",@"Semiya Biriyani.png",@"75",nil]];
    [arrrice addObject:[NSArray arrayWithObjects:@"Veg Jalfraize",@"Juicy dish filled with veggies of high nutritional value",@"Veg Jalfraize.png",@"100",nil]];
    [arrrice addObject:[NSArray arrayWithObjects:@"Fried rice",@"Steamed rice stir-fried",@"Fried rice.png",@"60",nil]];
    [arrrice addObject:[NSArray arrayWithObjects:@"Palak Paneer Pulav",@"Packs the nutrition of spinach & taste of paneer",@"Palak Paneer Pulav.png",@"75",nil]];
    [arrrice addObject:[NSArray arrayWithObjects:@"Corn Capsicum Pulav",@"Colorful & flavorful mix of corn and capsicum",@"Corn Capsicum Pulav.png",@"87",nil]];
     [arrrice addObject:[NSArray arrayWithObjects:@"Garlic Mushroom Fried Rice",@"Extremely flavorful meal that is highly enticing & alluring",@"Garlic Mushroom Fried Rice.png",@"80",nil]];


    
//    dessert
    arrdessert=[[NSMutableArray alloc]init];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Gulab jamun",@"Milk-solids-based dessert",@"Gulab jamun.png",@"90",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Chocolate mousse",@"Chocolate mousse in shallow cups, garnished with ground cinnamon",@"Chocolate mousse.png",@"125",nil]];
        [arrdessert addObject:[NSArray arrayWithObjects:@"Sorbet bombe",@"Lemon, peach, coconut, and pink-grapefruit sorbets",@"sorbet bombe.png",@"120",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Cherry blossom",@"A coconut cake, mint candies, and rose melting moments cookies ",@"cherry blossom.png",@"100",nil]];
     [arrdessert addObject:[NSArray arrayWithObjects:@"Pot Kulfi",@"The ice mix, along with its submerged kulfi moulds, is placed in a matka",@"Pot Kulfi.png",@"90",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Passion Fruit Cheesecake",@"Beautifully light and fresh, made with cream cheese and creme fraiche and fresh fruit in the mix",@"Passion Fruit Cheesecake.png",@"130",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Strawberry Meringue Tower",@"Tower of meringue with fresh cream and strawberries",@"Strawberry Meringue Tower.png",@"135",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Frozen strawberry souffles",@"colorful pink and red candies, cakes, and cookies",@"frozen strawberry souffles.png",@"100",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Tropical Bombe",@"a tropical bombe made with lemon, coconut, and passion fruit",@"tropical bombe.png",@"100",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Cold cherry soup",@"Cold and creamy cherry soup",@"cold cherry soup.png",@"90",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Mini chocolate covered desserts",@"mini chocolate with melted white chocolate",@"mini chocolate.png",@"120",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Mini doughnuts",@"Creamy doughnuts with chocolate",@"mini doughnuts.png",@"100",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Champgne gelee",@"Sophisticated and unique dessert",@"champgne_gelee.png",@"100",nil]];
      [arrdessert addObject:[NSArray arrayWithObjects:@"Chocolate Cake",@"Cake flavored with melted chocolate and cocoa powder",@"cake.png",@"150",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Lemon bombe",@"Lemon and Champagne sorbets",@"lemonbombe.png",@"80",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Lemon pavlovas",@"Clouds of meringue, perfumed with vanilla, are baked until crispy outside and marshmallow-soft within",@"lemon pavlovas.png",@"80",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Hazelnut cheesecake squares ",@"Blend of cheeses together with a hazelnut cookie crust",@"Cheesecake.png",@"100",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Lemon and cheese cake pound cake",@"Iced poppy-seed tea cakes with cream cheese in the batter",@"cream cheese cake.png",@"120",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Potted chocolate pudding",@"Composed of flowering herbs nestled in chocolaty soil-covered pudding",@"chocolate pudding.png",@"95",nil]];
     [arrdessert addObject:[NSArray arrayWithObjects:@"Luster dusted meringues",@"Mix of luster dust and orange extract",@"luster dusted.png",@"100",nil]];
     [arrdessert addObject:[NSArray arrayWithObjects:@"Blackberry cocoa sorbet",@"Blackberry cocoa mini scoops presented in tiny cones",@"blackberry cocoa sorbet.png",@"110",nil]];
     [arrdessert addObject:[NSArray arrayWithObjects:@"Peach cream ice-pops",@"Blended from fresh peaches and heavy cream",@"peaches and cream ice pops.png",@"99",nil]];
     [arrdessert addObject:[NSArray arrayWithObjects:@"Miniature whitecake",@"Cut pieces from a sheet cake",@"miniature white cake.png",@"110",nil]];
      [arrdessert addObject:[NSArray arrayWithObjects:@"Heavenly ice",@"Pudding",@"heavenly ice.png",@"90",nil]];
      [arrdessert addObject:[NSArray arrayWithObjects:@"Icecream cookie sandwich",@"Icecream and cookie sandwich",@"icecream cookie sandwich.png",@"100",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Apple Halwa",@"A lip smacking dessert with the goodness of apple",@"Apple Halwa.png",@"90",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Badam Cassata",@"Creamy dessert that is served chill",@"Badam Cassata.png",@"90",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Cadburry Roll",@"Cadbury chocolate, combined with a chocolate sponge and a delicious vanilla creme",@"Cadburry Roll.png",@"85",nil]];
      [arrdessert addObject:[NSArray arrayWithObjects:@"Icecream cone",@"Icecream cones with different flavours",@"icecream cone.png",@"60",nil]];
    
     [arrdessert addObject:[NSArray arrayWithObjects:@"Icecream cups",@"Drip-free ice cream cone with these delightful and delicious waffle cups",@"icecream cups.png",@"50",nil]];
     [arrdessert addObject:[NSArray arrayWithObjects:@"Icecream sandwich",@"Huckleberry ice cream sandwiches made with ginger cookies",@"icecream sandwich.png",@"70",nil]];
     [arrdessert addObject:[NSArray arrayWithObjects:@"Imarti",@"A spherically meshed sweet dish made up of batter from moong dal dipped in sugary syrup",@"Imarti.png",@"75",nil]];
     [arrdessert addObject:[NSArray arrayWithObjects:@"Layered icecream treat",@"Multilayered stacked confection icecream treat",@"layered icecreamtreat.png",@"80",nil]];
     [arrdessert addObject:[NSArray arrayWithObjects:@"Roulades",@"Filled rolled meat or pastry",@"roulades.png",@"80",nil]];
     [arrdessert addObject:[NSArray arrayWithObjects:@"Strawberry shaped icecream",@"Ice cream molded into the shape of a strawberry",@"strawberry shaped icecream.png",@"76",nil]];
     [arrdessert addObject:[NSArray arrayWithObjects:@"Sweet nut cups",@"Icecream filled with dryfruit nuts",@"sweet nut cups.png",@"90",nil]];
      [arrdessert addObject:[NSArray arrayWithObjects:@"Swirled chocolate icecream",@"Icecream slightly softened, but not melted—before swirling",@"swirled chocolate icecream.png",@"90",nil]];
    [arrdessert addObject:[NSArray arrayWithObjects:@"Faluda",@"Mix of layers of ice cream & jello’s which is extremely sweet",@"Faluda.png",@"80",nil]];
    
    }
-(IBAction)onDoneClick:(id)sender
{
    UserInformation *objUserInfo=[self.storyboard instantiateViewControllerWithIdentifier:@"UserInformation"];
//
    
    [self.navigationController pushViewController:objUserInfo animated:YES];
    
    objUserInfo.strPackage=@"Customized Package";
    

  }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 7;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0)
    {
        return arrdrink.count;
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
        return arrparatha.count;
    }
    else if (section==4)
    {
        return arrsabzi.count;
    }
    else if (section==5)
    {
        return arrrice.count;
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
        return @"Welcome Drink";
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
        return @"Paratha";
    }
    else if (section==4)
    {
        return @"Sabzi";
    }
    else if (section==5)
    {
        return @"Rice";
    }
    else
    {
        return @"Dessert";
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomizedScreenCell *Cell=[tableView dequeueReusableCellWithIdentifier:@"CustomizedScreenCell"];
    
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
        myArr= arrsoup;
    }
    else if (indexPath.section==2)
    {
        myArr= arrstarter;
    }
    else if (indexPath.section==3)
    {
        myArr= arrparatha;
    }
    else if (indexPath.section==4)
    {
        myArr= arrsabzi;
    }
    else if (indexPath.section==5)
    {
        myArr= arrrice;
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
    Cell.lblPrice.text=[[myArr objectAtIndex:indexPath.row] objectAtIndex:3];
    Cell.lblPrice.numberOfLines=0;
    [Cell.lblPrice sizeToFit];
    Cell.imgItemIcon.image=[UIImage imageNamed:[[myArr objectAtIndex:indexPath.row] objectAtIndex:2]];
    Cell.imgItemIcon.layer.masksToBounds=YES;
    Cell.imgItemIcon.layer.cornerRadius=50.0f;
    
    NSString *strTag=[NSString stringWithFormat:@"%d%ld0%ld",1,(long)indexPath.section,(long)indexPath.row];
    if (![arrBtnTag containsObject:strTag])
    {
        [Cell.btnSelectedItem addTarget:self action:@selector(onBtnSelectedItem:) forControlEvents:UIControlEventTouchUpInside];
        [Cell.btnSelectedItem setTag:[strTag integerValue]];
        [Cell.btnSelectedItem setSelected:NO];
    }
    else
    {
        [Cell.btnSelectedItem addTarget:self action:@selector(onBtnSelectedItem:) forControlEvents:UIControlEventTouchUpInside];
        [Cell.btnSelectedItem setTag:[strTag integerValue]];
        [Cell.btnSelectedItem setSelected:YES];
    }
    
    NSLog(@"%ld",(long)Cell.btnSelectedItem.tag);
    return Cell;
}
//
-(IBAction)onBtnSelectedItem:(id)sender
{
    UIButton *btn=sender;
    NSLog(@"%ld",(long)btn.tag);
    CustomizedScreenCell *cell = (CustomizedScreenCell *)btn.superview.superview;
    
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    NSString *strTag=[NSString stringWithFormat:@"%d%ld0%ld",1,(long)indexPath.section,(long)indexPath.row];
     NSLog(@"%@",[NSString stringWithFormat:@"%d%ld0%ld",1,(long)indexPath.section,(long)indexPath.row])
    ;    if (btn.tag==[strTag integerValue])
    {
        btn.selected=!btn.selected;
        
        if (btn.selected)
        {
            [arrBtnTag addObject:strTag];
        }
        else
        {
            [arrBtnTag removeObject:strTag];
        }
    }
    
    if (indexPath.section==0)
    {
        NSMutableArray *tempArray=[[NSMutableArray alloc] initWithArray:[arrdrink objectAtIndex:indexPath.row]];
       NSString *strSelPrice=[tempArray objectAtIndex:3];
        SemiFinalPrice=[strSelPrice integerValue];
    }
    else if (indexPath.section==1)
    {
        NSMutableArray *tempArray=[[NSMutableArray alloc] initWithArray:[arrsoup objectAtIndex:indexPath.row]];
        NSString *strSelPrice=[tempArray objectAtIndex:3];
        SemiFinalPrice=[strSelPrice integerValue];
    }
    else if (indexPath.section==2)
    {
        NSMutableArray *tempArray=[[NSMutableArray alloc] initWithArray:[arrstarter objectAtIndex:indexPath.row]];
        NSString *strSelPrice=[tempArray objectAtIndex:3];
        SemiFinalPrice=[strSelPrice integerValue];
    }
    else if (indexPath.section==3)
    {
        NSMutableArray *tempArray=[[NSMutableArray alloc] initWithArray:[arrparatha objectAtIndex:indexPath.row]];
        NSString *strSelPrice=[tempArray objectAtIndex:3];
        SemiFinalPrice=[strSelPrice integerValue];
    }
    else if (indexPath.section==4)
    {
        NSMutableArray *tempArray=[[NSMutableArray alloc] initWithArray:[arrsabzi objectAtIndex:indexPath.row]];
        NSString *strSelPrice=[tempArray objectAtIndex:3];
        SemiFinalPrice=[strSelPrice integerValue];
    }
    
        else if (indexPath.section==5)
    {
        NSMutableArray *tempArray=[[NSMutableArray alloc] initWithArray:[arrrice objectAtIndex:indexPath.row]];
        NSString *strSelPrice=[tempArray objectAtIndex:3];
        SemiFinalPrice=[strSelPrice integerValue];
    }
    else
    {
        NSMutableArray *tempArray=[[NSMutableArray alloc] initWithArray:[arrdessert objectAtIndex:indexPath.row]];
        NSString *strSelPrice=[tempArray objectAtIndex:3];
        SemiFinalPrice=[strSelPrice integerValue];
    }
  
    FinalPrice=SemiFinalPrice+FinalPrice;
    
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];

    
    NSString *strFinalPrice=[NSString stringWithFormat:@"%ld",FinalPrice];

    NSLog(@"price is %@",strFinalPrice);
    appDelegate.FinalPrice = strFinalPrice;
    

//     NSString *MenuItemPrice= [arrsoup objectAtIndex:3]; ;
//    int calculateVal=0;
//    int calculate= [MenuItemPrice integerValue];
//    calculate= calculate+ calculateVal;
//    //int final= calculate*
//    ///lblPrice.txt = [NSString stringWithFormat:@"%d", calculate + calculateVal];
//
    
}


//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//}
/*
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}


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
