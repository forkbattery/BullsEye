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
    
    //setup About screen webview
    
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"BullsEyeAbout" ofType:@"html"];
    NSData *htmlData = [NSData dataWithContentsOfFile:htmlFile];
    NSURL *baseURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    
    [self.webView loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:baseURL];
    
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
}

- (IBAction)close {
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
}

-(BOOL)prefersStatusBarHidden {
    
    return YES;

}

@end
