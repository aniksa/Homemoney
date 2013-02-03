//
//  Student.m
//  Homemoney
//
//  Created by anna on 2/2/13.
//  Copyright (c) 2013 aniksa. All rights reserved.
//

#import "Student.h"

@implementation Student

@synthesize lastName = _lastName;

+(Student *)studentWithName:(NSString *)name andLastName:(NSString *)lastName
{
    Student *student = [[Student alloc]init];
    student.name = name;
    student.lastName = lastName;
    return student;
}

@end
