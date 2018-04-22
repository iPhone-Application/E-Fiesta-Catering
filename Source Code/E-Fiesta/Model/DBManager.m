//
//  DBManager.m
//  E-Fiesta
//
//  Created by iFlame on 18/03/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import "DBManager.h"

static DBManager *sharedInstance=nil;
static sqlite3 *Database;
@implementation DBManager

+(DBManager *)getSharedInstance
{
    if (!sharedInstance)
    {
        sharedInstance=[[DBManager alloc] init];
        [sharedInstance createDb];
    }
    return sharedInstance;
}

-(void)createDb
{
    NSString *resourcePath=[[NSBundle mainBundle] bundlePath];
    resourcePath=[resourcePath stringByAppendingPathComponent:@"E-FiestaDb.sqlite"];
    
    NSArray *arrDoc=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    documentPath=[arrDoc objectAtIndex:0];
    documentPath=[documentPath stringByAppendingPathComponent:@"E-FiestaDb.sqlite"];
    NSFileManager *manager=[NSFileManager defaultManager];
    NSError *error;
    if (![manager isReadableFileAtPath:documentPath])
    {
        [manager copyItemAtPath:resourcePath toPath:documentPath error:&error];
    }
}

-(void)insertData :(NSString *)fname :(NSString *)mname :(NSString *)lname :(NSString *)uname :(NSString *)pwd :(NSString *)phone :(NSString *)email :(NSString *)address :(NSString *)dob
{
    sqlite3_stmt *statement=nil;
    const char *dbpath=[documentPath UTF8String];
    
    if (sqlite3_open(dbpath, &Database)==SQLITE_OK)
    {
        NSString *strQry=[NSString stringWithFormat:@"insert into Registration (Fname,Mname,Lname,Phone,Email,Uname,Pwd,dob,address) values (\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\")",fname,mname,lname,phone,email,uname,pwd,dob,address];
        
        const char *sql=[strQry UTF8String];
        
        if (sqlite3_prepare_v2(Database, sql, -1, &statement, NULL)==SQLITE_OK)
        {
            if (sqlite3_step(statement)==SQLITE_DONE)
            {
                NSLog(@"Success");
            }
            else
            {
                NSLog(@"Fail");
            }
        }
        sqlite3_finalize(statement);

    }
        sqlite3_close(Database);
}

-(BOOL)checkIsUserInDb :(NSString *)Username :(NSString *)Password
{
    sqlite3_stmt *statement=nil;
    const char *dbpath=[documentPath UTF8String];
    
    if (sqlite3_open(dbpath, &Database)==SQLITE_OK)
    {
        NSString *strQry=[NSString stringWithFormat:@"select * from Registration where Uname=\"%@\" And Pwd=\"%@\"",Username,Password];
        
        const char *sql=[strQry UTF8String];
        
        if (sqlite3_prepare_v2(Database, sql, -1, &statement, NULL)==SQLITE_OK)
        {
            while (sqlite3_step(statement)==SQLITE_ROW)
            {
                NSLog(@"Success");
                sqlite3_finalize(statement);
                sqlite3_close(Database);
                return YES;
            }
            NSLog(@"Fail");
            NSLog(@"%s",sqlite3_errmsg(Database));
            return NO;
        }
        NSLog(@"%s",sqlite3_errmsg(Database));
    }
    sqlite3_reset(statement);
    return NO;
}
-(BOOL)checkIsUserForForgetPwd :(NSString *)Username :(NSString *)pwd :(NSString *)Email
{
    sqlite3_stmt *statement=nil;
    const char *dbpath=[documentPath UTF8String];
    
    if (sqlite3_open(dbpath, &Database)==SQLITE_OK)
    {
        NSString *strQry=[NSString stringWithFormat:@"select * from Registration where Uname=\"%@\" And Email=\"%@\"",Username,Email];
        
        const char *sql=[strQry UTF8String];
        
        if (sqlite3_prepare_v2(Database, sql, -1, &statement, NULL)==SQLITE_OK)
        {
            while (sqlite3_step(statement)==SQLITE_ROW)
            {
                NSLog(@"Success");
                sqlite3_finalize(statement);
                sqlite3_close(Database);
                BOOL result=[self UpdateData:Username :pwd :Email];
                
                return result;
            }
            NSLog(@"Fail");
            NSLog(@"%s",sqlite3_errmsg(Database));
            return NO;
        }
        NSLog(@"%s",sqlite3_errmsg(Database));
    }
    sqlite3_reset(statement);
    return NO;
}

-(BOOL)UpdateData :(NSString *)uname :(NSString *)pwd :(NSString *)email
{
    sqlite3_stmt *statement=nil;
    const char *dbpath=[documentPath UTF8String];
    
    if (sqlite3_open(dbpath, &Database)==SQLITE_OK)
    {
        NSString *strQry=[NSString stringWithFormat:@"update Registration set Uname=\"%@\",Email=\"%@\",Pwd=\"%@\" where Uname=\"%@\" And Email=\"%@\"",uname,email,pwd,uname,email];
        
        const char *sql=[strQry UTF8String];
        
        if (sqlite3_prepare_v2(Database, sql, -1, &statement, NULL)==SQLITE_OK)
        {
            if (sqlite3_step(statement)==SQLITE_DONE)
            {
                NSLog(@"Success");
                return YES;
            }
            else
            {
                NSLog(@"%s",sqlite3_errmsg(Database));
                NSLog(@"Fail");
                return NO;
            }
        }
    }
    NSLog(@"%s",sqlite3_errmsg(Database));
    sqlite3_reset(statement);
    return NO;
}
-(void)insertDataOrder :(NSString *)Name :(NSString *)Package :(NSString *)PlotAddress :(NSString *)StreetAddress :(NSString *)City :(NSString *)EventDate :(NSString *)Guest :(NSString *)Price :(NSString *)TotalCost :(NSString *)DepositCost
{
    sqlite3_stmt *statement=nil;
    const char *dbpath=[documentPath UTF8String];
    
    if (sqlite3_open(dbpath, &Database)==SQLITE_OK)
    {
        NSString *strQry=[NSString stringWithFormat:@"insert into OrderReceipt (Name,Package,PlotAddress,StreetAddress,City,EventDate,Guest,Price,TotalCost,DepositCost) values (\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\")",Name,Package,PlotAddress,StreetAddress,City,EventDate,Guest,Price,TotalCost,DepositCost];
        
        const char *sql=[strQry UTF8String];
        
        if (sqlite3_prepare_v2(Database, sql, -1, &statement, NULL)==SQLITE_OK)
        {
            if (sqlite3_step(statement)==SQLITE_DONE)
            {
                NSLog(@"Success");
            }
            else
            {
                NSLog(@"Fail");
                NSLog(@"%s",sqlite3_errmsg(Database));
            }
        }
    }
    sqlite3_reset(statement);

}
-(void)insertDataFb :(NSString *)Name :(NSString *)Phone :(NSString *)Email :(NSString *)Feedback
{
    sqlite3_stmt *statement=nil;
    const char *dbpath=[documentPath UTF8String];
    
    if (sqlite3_open(dbpath, &Database)==SQLITE_OK)
    {
        NSString *strQry=[NSString stringWithFormat:@"insert into Feedback (Name,Phone,Email,Feedback) values (\"%@\",\"%@\",\"%@\",\"%@\")",Name,Phone,Email,Feedback];
        
        const char *sql=[strQry UTF8String];
        
        if (sqlite3_prepare_v2(Database, sql, -1, &statement, NULL)==SQLITE_OK)
        {
            if (sqlite3_step(statement)==SQLITE_DONE)
            {
                NSLog(@"Success");
            }
            else
            {
                NSLog(@"Fail");
            }
        }
    }
    sqlite3_reset(statement);
    

}

-(NSMutableArray *) RetrieveOrder
{
    NSMutableArray *arrList=[[NSMutableArray alloc] init];
    sqlite3_stmt *statement=nil;
    const char *dbpath=[documentPath UTF8String];
    
    if (sqlite3_open(dbpath, &Database)==SQLITE_OK)
    {
        NSString *querySQl=[NSString stringWithFormat:@"SELECT * FROM OrderReceipt"];
        NSLog(@"Data=%@",querySQl);
      
        
       // NSString *strQry=[NSString stringWithFormat:@"update Registration set Uname=\"%@\",Email=\"%@\",Pwd=\"%@\" where Uname=\"%@\" And Email=\"%@\"",uname,email,pwd,uname,email];
        
        const char *sql=[querySQl UTF8String];
        
        if (sqlite3_prepare_v2(Database, sql, -1, &statement, NULL)==SQLITE_OK)
        {
            while (sqlite3_step(statement)==SQLITE_ROW)
            {
                NSString *Name=[[NSString alloc]initWithUTF8String:(const char*) sqlite3_column_text(statement, 0)];
                NSString *Package=[[NSString alloc]initWithUTF8String:(const char*) sqlite3_column_text(statement, 1)];
                NSString *PlotAddress=[[NSString alloc]initWithUTF8String:(const char*) sqlite3_column_text(statement, 2)];
                NSString *StreetAddress=[[NSString alloc]initWithUTF8String:(const char*) sqlite3_column_text(statement, 3)];
                NSString *City=[[NSString alloc]initWithUTF8String:(const char*) sqlite3_column_text(statement, 4)];
                NSString *EventDate=[[NSString alloc]initWithUTF8String:(const char*) sqlite3_column_text(statement, 5)];
                NSString *Guest=[[NSString alloc]initWithUTF8String:(const char*) sqlite3_column_text(statement, 6)];
                NSString *Price=[[NSString alloc]initWithUTF8String:(const char*) sqlite3_column_text(statement, 7)];
                NSString *TotalCost=[[NSString alloc]initWithUTF8String:(const char*) sqlite3_column_text(statement, 8)];
                NSString *DepositCost=[[NSString alloc]initWithUTF8String:(const char*) sqlite3_column_text(statement, 9)];
                
                NSArray *arrTemp=@[Name,Package,PlotAddress,StreetAddress,City,EventDate,Guest,Price,TotalCost,DepositCost];
                [arrList addObject:arrTemp];
            }
            
        }
        sqlite3_finalize(statement);
    }
     sqlite3_close(Database);
    NSLog(@"%s",sqlite3_errmsg(Database));
    
    return arrList;
}

-(BOOL) DeleteOrder :(NSString *)strEventDate
{
    sqlite3_stmt *statement=nil;
    const char *dbpath=[documentPath UTF8String];
    
    if (sqlite3_open(dbpath, &Database)==SQLITE_OK)
    {
        NSString *querySQl=[NSString stringWithFormat:@"delete from OrderReceipt where EventDate=\"%@\"",strEventDate];
        NSLog(@"Data=%@",querySQl);
        
        
        // NSString *strQry=[NSString stringWithFormat:@"update Registration set Uname=\"%@\",Email=\"%@\",Pwd=\"%@\" where Uname=\"%@\" And Email=\"%@\"",uname,email,pwd,uname,email];
        
        const char *sql=[querySQl UTF8String];
        
        if (sqlite3_prepare_v2(Database, sql, -1, &statement, NULL)==SQLITE_OK)
        {
            if (sqlite3_step(statement)==SQLITE_DONE)
            {
                NSLog(@"Success");
                sqlite3_reset(statement);
                return YES;
            }
            else
            {
                NSLog(@"Fail");
            }

            
        }
         NSLog(@"%s",sqlite3_errmsg(Database));
        sqlite3_finalize(statement);
    }
     sqlite3_close(Database);
    NSLog(@"%s",sqlite3_errmsg(Database));
    return NO;
}


@end
