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
    //instance variables have a default value of 0
    int _currentValue;
    int _targetValue;
    int _round;
    int _score;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self startNewRound];
    [self updateLabels];

}

- (void)startNewRound {
    
    _targetValue = 1 + arc4random_uniform(100);
    _currentValue = 50;
    self.slider.value = _currentValue;
    _round += 1;
    
}

- (void)updateLabels {
    
    self.targetLabel.text = [NSString stringWithFormat:@"%i", _targetValue];
    self.roundLabel.text = [NSString stringWithFormat:@"%i", _round];
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", _score];
    
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
}

- (IBAction)showAlert {
    
    int difference = abs(_targetValue - _currentValue);
    int points = 100 - difference;
    
    NSString * title = @"";
    if (difference == 0) {
        title = @"Perfect!";
        points += 100;
    } else if (difference < 5) {
        title = @"Almost had it!";
        if (difference == 1) {
            points += 50;
        }
    } else if (difference < 10) {
        title = @"Pretty good";
    } else {
        title = @"Not even close...";
    }
    
    _score += points;
    
    NSString * message = [NSString stringWithFormat:@"You scored %i points", points];
    
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:title
                              message:message
                              delegate:self
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil, nil];
    [alertView show];
    
}

- (IBAction)sliderMoved:(UISlider *)slider {
    
    _currentValue = (int)slider.value;
    
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    
    [self startNewRound];
    [self updateLabels];
    
}

- (void) startOver {
    
    _round = 0;
    _score = 0;
    [self startNewRound];
    [self updateLabels];
    
}

@end
