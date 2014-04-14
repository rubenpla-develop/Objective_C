//
//  ViewController.h
//  QuoteQuiz
//
//  Created by Ruben on 11/04/14.
//  Copyright (c) 2014 Ruben Pla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuizTipViewController.h"
@class Quiz;

@interface ViewController : UIViewController <QuizTipViewControllerDelegate>

@property (strong, nonatomic) Quiz * quiz;
@property (assign, nonatomic) NSInteger quizIndex;

- (IBAction)ans1Action:(id)sender;
- (IBAction)ans2Action:(id)sender;
- (IBAction)ans3Action:(id)sender;
- (IBAction)startAgain:(id)sender;



@end
