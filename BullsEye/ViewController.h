//
//  ViewController.h
//  BullsEye
//
//  Created by Kanishka Goel on 2014-12-21.
//  Copyright (c) 2014 Kanishka Goel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *targetLabel;
@property (weak, nonatomic) IBOutlet UILabel *roundLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

- (IBAction)showAlert;
- (IBAction)sliderMoved:(UISlider *)slider;


@end

