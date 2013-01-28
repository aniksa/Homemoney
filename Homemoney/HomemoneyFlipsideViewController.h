//
//  HomemoneyFlipsideViewController.h
//  Homemoney
//
//  Created by anna on 1/28/13.
//  Copyright (c) 2013 aniksa. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HomemoneyFlipsideViewController;

@protocol HomemoneyFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(HomemoneyFlipsideViewController *)controller;
@end

@interface HomemoneyFlipsideViewController : UIViewController

@property (weak, nonatomic) id <HomemoneyFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
