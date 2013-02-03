//
//  HomemoneyMainViewController.h
//  Homemoney
//
//  Created by anna on 1/28/13.
//  Copyright (c) 2013 aniksa. All rights reserved.
//

#import "HomemoneyFlipsideViewController.h"
#import "RegistrationViewController.h"


@interface HomemoneyMainViewController : UIViewController <HomemoneyFlipsideViewControllerDelegate>

@property (strong, nonatomic) UIPopoverController *flipsidePopoverController;

@property (strong, nonatomic) RegistrationViewController   *regViewController;



- (IBAction)loginAction:(id)sender;
- (IBAction)joinPressed:(id)sender;


@property (strong, nonatomic) IBOutlet UITextField *txtEmail;
@property (strong, nonatomic) IBOutlet UITextField *txtPassword;


@end
