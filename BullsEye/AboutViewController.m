//
//  AboutViewController.m
//  BullsEye
//
//  Created by Kanishka Goel on 2014-12-23.
//  Copyright (c) 2014 Kanishka Goel. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
}

- (IBAction)close {
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
}

@end
