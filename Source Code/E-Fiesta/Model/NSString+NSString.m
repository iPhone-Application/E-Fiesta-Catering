//
//  NSString+NSString.m
//  CA125Tracker
//
//  Created by I-VERVE5 on 19/05/15.
//  Copyright (c) 2015 I-VERVE5. All rights reserved.
//

#import "NSString+NSString.h"

@implementation NSString (NSString)




-(void)showAlert
{
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"E-Fiesta"
                                                    message:self
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:@"Cancel",nil];
    [alert show];
}


- (CGSize)getSizeWithFont:(UIFont *)font andWidth:(float)width
{
    
    
    
    return CGSizeZero;
}


- (NSString *)propertyStyleString
{
    
    NSString * result = [[self substringToIndex: 1] lowercaseString];
    
    if ( [self length] == 1 )
        return ( result );
    
    return ( [result stringByAppendingString: [self substringFromIndex: 1]] );
}


@end
