//
//  HomemoneyMainViewController.m
//  Homemoney
//
//  Created by anna on 1/28/13.
//  Copyright (c) 2013 aniksa. All rights reserved.
//

#import "HomemoneyMainViewController.h"
#import "User.h"

@interface HomemoneyMainViewController ()

@end

@implementation HomemoneyMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View Controller

- (void)flipsideViewControllerDidFinish:(HomemoneyFlipsideViewController *)controller
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self.flipsidePopoverController dismissPopoverAnimated:YES];
    }
}

- (IBAction)showInfo:(id)sender
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        HomemoneyFlipsideViewController *controller = [[HomemoneyFlipsideViewController alloc] initWithNibName:@"HomemoneyFlipsideViewController" bundle:nil];
        controller.delegate = self;
        controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        [self presentViewController:controller animated:YES completion:nil];
    } else {
        if (!self.flipsidePopoverController) {
            HomemoneyFlipsideViewController *controller = [[HomemoneyFlipsideViewController alloc] initWithNibName:@"HomemoneyFlipsideViewController" bundle:nil];
            controller.delegate = self;
            
            self.flipsidePopoverController = [[UIPopoverController alloc] initWithContentViewController:controller];
        }
        if ([self.flipsidePopoverController isPopoverVisible]) {
            [self.flipsidePopoverController dismissPopoverAnimated:YES];
        } else {
            [self.flipsidePopoverController presentPopoverFromBarButtonItem:sender permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
        }
    }
}

- (IBAction)loginAction:(id)sender {
    User* user = [[User alloc]init];
    user.username = self.txtEmail.text;
    user.password = self.txtPassword.text;
    NSLog(@"%@ %@",user.username,user.password);
    
}
@end
