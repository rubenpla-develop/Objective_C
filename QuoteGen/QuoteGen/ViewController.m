//
//  ViewController.m
//  QuoteGen
//
//  Created by Ruben on 08/04/14.
//  Copyright (c) 2014 Ruben Pla. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.myQuotes = @[@"Live and let live",
                      @"Don't cry over spilt milk",
                      @"Always llok on the bright side of the live",
                      @"Nobody's perfect",
                      @"Can't see tje woods for the trees",
                      @"Better to have loved and lost then not loved at all",
                      @"The early bird catches the worm",
                      @"As slor as wet week"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Button:(id)sender {
    
    int array_tot = [self.myQuotes count];
    
    int array_index = (arc4random() % array_tot);
    
    NSString *selected_quote = self.myQuotes[array_index];
    
    self.myQuote.text = [NSString stringWithFormat:@"Quote selected: %@", selected_quote];
    
    
    
    
    //self.myQuote.text = @" HEY WHAT'S UP!!";
}
@end
