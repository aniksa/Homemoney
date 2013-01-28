//
//  HomemoneyMainViewController.h
//  Homemoney
//
//  Created by anna on 1/28/13.
//  Copyright (c) 2013 aniksa. All rights reserved.
//

#import "HomemoneyFlipsideViewController.h"

@interface HomemoneyMainViewController : UIViewController <HomemoneyFlipsideViewControllerDelegate>

@property (strong, nonatomic) UIPopoverController *flipsidePopoverController;

- (IBAction)showInfo:(id)sender;

@end
