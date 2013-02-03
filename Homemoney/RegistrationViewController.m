//
//  RegistrationViewController.m
//  Homemoney
//
//  Created by anna on 2/2/13.
//  Copyright (c) 2013 aniksa. All rights reserved.
//

#import "RegistrationViewController.h"
#import "Student.h"

@interface RegistrationViewController ()


@end

@implementation RegistrationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)joinPressed:(id)sender {
    Student *st = [Student studentWithName:self.txtName.text andLastName:self.txtLastName.text];
}
@end
