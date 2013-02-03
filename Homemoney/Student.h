//
//  Student.h
//  Homemoney
//
//  Created by anna on 2/2/13.
//  Copyright (c) 2013 aniksa. All rights reserved.
//

#import "Human.h"

@interface Student : Human

@property NSString *lastName;

+(Student *)studentWithName: (NSString *)name andLastName: (NSString *)lastName;

@end
