//
//  ViewController.m
//  BullsEye
//
//  Created by Kanishka Goel on 2014-12-21.
//  Copyright (c) 2014 Kanishka Goel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{
    int _currentValue;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _currentValue = self.slider.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert {
    
    NSString * message = [NSString stringWithFormat:@"The value of the slider is: %i", _currentValue];
    
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Hello, World!" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertView show];
    
}
- (IBAction)sliderMoved:(UISlider *)slider {
    
    _currentValue = (int)slider.value;
    
}

@end
