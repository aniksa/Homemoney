//
//  User.m
//  Homemoney
//
//  Created by anna on 1/31/13.
//  Copyright (c) 2013 aniksa. All rights reserved.
//

#import "User.h"

@implementation User
-(id)init
{
    return [super init];
}

-(void)logOut
{
    NSLog(@"user logged out");
}

+(User *)userWithName:(NSString *)username andPassword:(NSString *)password
{
    User* user = [[User alloc] init];
    return user;    
}

@synthesize username = _username;
@synthesize password = _password;

@end
