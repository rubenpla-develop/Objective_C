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
    
    NSString *plistCatPath = [[NSBundle mainBundle] pathForResource:@"quotes" ofType:@"plist"];
    self.movieQuotes = [NSMutableArray arrayWithContentsOfFile: plistCatPath];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Button:(id)sender {
    
    //3rd option segmented control selected
    if (self.quote_type.selectedSegmentIndex == 2){
        //get number of arrays
        int array_tot = [self.myQuotes count];
        
        //get random index
        int array_index = (arc4random() % array_tot);
        
        //get the wuote string for the index
        //NSString *selected_quote = [self.myQuotes objectAtIndex:array_index];
        NSString *selected_quote = self.myQuotes[array_index];
        
        //display the quote in the textView
        self.myQuote.text = [NSString stringWithFormat:@"Quote : %@", selected_quote];
    }else{
        
        //GET CATEGORY
        NSString *selected_qType = @"classic";
        if (self.quote_type.selectedSegmentIndex == 1){
            selected_qType = @"modern";
        }
        
        //filter array by category selected
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"category == %@", selected_qType];
        
        NSArray *array_filter = [self.movieQuotes filteredArrayUsingPredicate:predicate];
        
        //get total number in filtered array
        int array_tot = [array_filter count];
        
        //only get quote if rows>0
        if (array_tot > 0){
            int array_index = (arc4random() % array_tot);
            
            NSString *quote = array_filter[array_index][@"quote"];
            
            self.myQuote.text = [NSString stringWithFormat:@"Movie quote: %@", quote];
        }else{
            self.myQuote.text = [NSString stringWithFormat:@"No quotes to display"];
        }
        
    }
   
    
}
@end
