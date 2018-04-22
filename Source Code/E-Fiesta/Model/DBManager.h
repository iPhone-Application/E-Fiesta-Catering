//
//  DBManager.h
//  E-Fiesta
//
//  Created by iFlame on 18/03/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
@interface DBManager : NSObject
{
    NSString *documentPath;
}
+(DBManager *)getSharedInstance;


-(void)insertData :(NSString *)fname :(NSString *)mname :(NSString *)lname :(NSString *)uname :(NSString *)pwd :(NSString *)phone :(NSString *)email :(NSString *)address :(NSString *)dob;


-(BOOL)UpdateData :(NSString *)uname :(NSString *)pwd :(NSString *)email;

-(BOOL)checkIsUserInDb :(NSString *)Username :(NSString *)Password;

-(void)insertDataOrder :(NSString *)Name :(NSString *)Package :(NSString *)PlotAddress :(NSString *)StreetAddress :(NSString *)City :(NSString *)EventDate :(NSString *)Guest :(NSString *)Price :(NSString *)TotalCost :(NSString *)DepositCost;
-(void)insertDataFb :(NSString *)Name :(NSString *)Phone :(NSString *)Email :(NSString *)Feedback;
-(BOOL)checkIsUserForForgetPwd :(NSString *)Username :(NSString *)pwd :(NSString *)Email;
-(NSMutableArray *) RetrieveOrder;
-(BOOL) DeleteOrder :(NSString *)strName;
@end
