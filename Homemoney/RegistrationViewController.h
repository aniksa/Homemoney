//
//  RegistrationViewController.h
//  Homemoney
//
//  Created by anna on 2/2/13.
//  Copyright (c) 2013 aniksa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistrationViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *txtName;
@property (strong, nonatomic) IBOutlet UITextField *txtLastName;
- (IBAction)joinPressed:(id)sender;

@end
