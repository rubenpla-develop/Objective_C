//
//  ViewController.h
//  Magic Bulb
//
//  Created by Ruben on 07/04/14.
//  Copyright (c) 2014 Ruben Pla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lblBulb;

@property (strong, nonatomic) IBOutlet UIImageView *bulb;

- (IBAction)turn_on:(id)sender;


@property (strong, nonatomic) IBOutlet UISlider *slide_bulb;


- (IBAction)slide_bulb:(id)sender;

@end
