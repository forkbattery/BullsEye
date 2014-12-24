//
//  AboutViewController.h
//  BullsEye
//
//  Created by Kanishka Goel on 2014-12-23.
//  Copyright (c) 2014 Kanishka Goel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIWebView *webView;

- (IBAction)close;

@end
