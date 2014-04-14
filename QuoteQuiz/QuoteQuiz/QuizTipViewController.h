//
//  QuizTipViewController.h
//  QuoteQuiz
//
//  Created by Ruben on 14/04/14.
//  Copyright (c) 2014 Ruben Pla. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol QuizTipViewControllerDelegate;

@interface QuizTipViewController : UIViewController

@property (assign, nonatomic) id <QuizTipViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextView * tipView;
@property (copy, nonatomic) NSString * tipText;

- (IBAction)doneAction:(id)sender;

@end


//Any class thar implements this protocol must implement this method
@protocol QuizTipViewControllerDelegate

- (void)quizTipDidFinish:(QuizTipViewController *)controller;

@end
