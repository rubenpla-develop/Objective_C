//
//  ViewController.m
//  Magic Bulb
//
//  Created by Ruben on 07/04/14.
//  Copyright (c) 2014 Ruben Pla. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize bulb;
@synthesize slide_bulb;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)turn_on:(id)sender {
    
    UISwitch * interruptor = sender;
    
    if (interruptor.on) {
        bulb.hidden = YES;
    } else {
        bulb.hidden = NO;
    }
    
}
- (IBAction)slide_bulb:(id)sender {
    
    UISwitch * interruptor = sender;
    
    //slide_bulb value is given to bulb image  alpha property.
    
    //value.slide_bulb = alpha.bulb;
    //slide_bulb.value = (bulb.alpha)/100;
//    if (interruptor.on) {
//        UIAlertView *alert_on = [[UIAlertView alloc] initWithTitle:@"Swith ON!" message:@"Disable Switch?" delegate:self cancelButtonTitle:@"NO" otherButtonTitles:@"YES", nil];
//        
//        [alert_on show];
//    } else {
//        bulb.alpha = (100 - slide_bulb.value)/100;
//    }
    
    bulb.alpha = (100 - slide_bulb.value)/100;
    
}
@end
