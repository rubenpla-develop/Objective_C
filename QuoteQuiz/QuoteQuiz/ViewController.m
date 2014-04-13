//
//  ViewController.m
//  QuoteQuiz
//
//  Created by Ruben on 11/04/14.
//  Copyright (c) 2014 Ruben Pla. All rights reserved.
//

#import "ViewController.h"
#import "Quiz.h"

@interface ViewController ()
   
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answer1Label;
@property (weak, nonatomic) IBOutlet UILabel *answer2Label;
@property (weak, nonatomic) IBOutlet UILabel *answer3Label;
@property (weak, nonatomic) IBOutlet UIButton *answer1Button;
@property (weak, nonatomic) IBOutlet UIButton *answer2Button;
@property (weak, nonatomic) IBOutlet UIButton *answer3Button;
@property (weak, nonatomic) UIImageView * movie1;
@property (weak, nonatomic) UIImageView * movie2;
@property (weak, nonatomic) UIImageView * movie3;
@property (weak, nonatomic) UILabel * statusLabel;
@property (weak, nonatomic) UIButton * startButton;
@property (weak, nonatomic) UIButton * infoButton;
@property (weak, nonatomic) IBOutlet UILabel *labelCorrect;
@property (weak, nonatomic) IBOutlet UILabel *labelIncorrect;

@property (assign, nonatomic) NSInteger answer;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.quizIndex = 999;
    self.quiz = [[Quiz alloc] initWithQuiz:@"quotes"];
    self.questionLabel.backgroundColor = [UIColor colorWithRed:51/255.0 green:133/255.0 blue:238/255.0 alpha:1.0];
    [self nextQuizItem];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)quizDone{
    if (self.quiz.correctCount){
        self.statusLabel.text = [NSString stringWithFormat:@"QUIZ done - Score %d%%", self.quiz.quizCount/self.quiz.quizCount];
    }else{
        self.statusLabel.text = @"Quiz done - Score 0%";
    }
    [self.startButton setTitle:@"Try Again" forState:UIControlStateNormal];
    self.quizIndex = 999;
}

- (void)nextQuizItem{
    if (self.quizIndex == 999){
        self.quizIndex = 0;
        self.statusLabel.text = @"";
    }else if ((self.quiz.quizCount-1) >= self.quizIndex){
        self.quizIndex++;
    }else{
        self.quizIndex = 0;
        self.statusLabel.text = @"";
    }
    
    if (self.quiz.quizCount >= self.quizIndex + 1){
        [self.quiz nextQuestion:self.quizIndex];
        self.questionLabel.text = self.quiz.quote;
        self.answer1Label.text = self.quiz.ans1;
        self.answer2Label.text = self.quiz.ans2;
        self.answer3Label.text = self.quiz.ans3;
    }else{
        self.quizIndex = 0;
        [self quizDone];
    }
    
    //reset fiels for next question
    self.answer1Label.backgroundColor = [UIColor colorWithRed:51/255.0 green:133/255.0 blue:238/255.0 alpha:1.0];
    self.answer2Label.backgroundColor = [UIColor colorWithRed:51/255.0 green:133/255.0 blue:238/255.0 alpha:1.0];
    self.answer3Label.backgroundColor = [UIColor colorWithRed:51/255.0 green:133/255.0 blue:238/255.0 alpha:1.0];
    
    self.answer1Button.hidden = NO;
    self.answer2Button.hidden = NO;
    self.answer3Button.hidden = NO;
}

- (void) checkAnswer{
    if ([self.quiz checkQuestion:self.quizIndex forAnswer:_answer]){
        self.labelCorrect.hidden = NO;
        if (self.answer == 1){
            self.answer1Label.backgroundColor = [UIColor greenColor];
        }else if (self.answer == 2){
            self.answer2Label.backgroundColor = [UIColor greenColor];
        }else if (self.answer == 3){
            self.answer3Button.backgroundColor = [UIColor greenColor];
        }
    }else {
        self.labelIncorrect.hidden = NO;
        if (self.answer == 1){
            self.answer1Label.backgroundColor = [UIColor redColor];
        }else if (self.answer == 2){
            self.answer2Label.backgroundColor = [UIColor redColor];
        }else if (self.answer ==3){
            self.answer3Label.backgroundColor = [UIColor redColor];
        }
    }
    
    self.statusLabel.text = [NSString stringWithFormat:@"Correct: %d Incorrect: %d", self.quiz.correctCount, self.quiz.incorrectCount];
    
    self.answer1Button.hidden = YES;
    self.answer2Button.hidden = YES;
    self.answer3Button.hidden = YES;
    
    self.startButton.hidden = NO;
    [self.startButton setTitle:@"next" forState:UIControlStateNormal];
}

- (IBAction)ans1Action:(id)sender {
    
    self.answer = 1;
    [self checkAnswer];
}

- (IBAction)ans2Action:(id)sender {
    
    self.answer = 2;
    [self checkAnswer];
}

- (IBAction)ans3Action:(id)sender {
    
    self.answer = 3;
    [self checkAnswer];
}
@end










