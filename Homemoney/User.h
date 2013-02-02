//
//  User.h
//  Homemoney
//
//  Created by anna on 1/31/13.
//  Copyright (c) 2013 aniksa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

-(void)logOut;
+(User *)userWithName:(NSString *)username andPassword:(NSString *)password;
@property (nonatomic,strong) NSString* username;
@property (nonatomic,strong) NSString* password;

@end
