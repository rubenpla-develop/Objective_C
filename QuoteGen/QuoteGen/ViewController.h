//
//  ViewController.h
//  QuoteGen
//
//  Created by Ruben on 08/04/14.
//  Copyright (c) 2014 Ruben Pla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) NSArray *myQuotes;
@property (strong, nonatomic) NSMutableArray *movieQuotes;


@property (strong, nonatomic) IBOutlet UITextView *myQuote;


- (IBAction)Button:(id)sender;

@property (strong, nonatomic) IBOutlet UISegmentedControl *quote_type;


@end
