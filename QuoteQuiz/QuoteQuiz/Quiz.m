//
//  Quiz.m
//  QuoteQuiz
//
//  Created by Ruben on 11/04/14.
//  Copyright (c) 2014 Ruben Pla. All rights reserved.
//

#import "Quiz.h"

@interface Quiz()
    //Extension class, these properties can be read or written locally
    @property (strong, nonatomic) NSString * quote;
    @property (strong, nonatomic) NSString * ans1;
    @property (strong, nonatomic) NSString * ans2;
    @property (strong, nonatomic) NSString * ans3;

@end

@implementation Quiz

-(void) nextQuestion:  (NSUInteger) idx{
    
    self.quote = [NSString stringWithFormat:@"%@", self.movieArray[idx][@"quote"]];
    
    self.ans1 = self.movieArray[idx][@"ans1"];
    self.ans2 = self.movieArray[idx][@"ans2"];
    self.ans3 = self.movieArray[idx][@"ans3"];
    
    if (idx == 0){
        self.correctCount = 0;
        self.incorrectCount = 0;
    }
    
}

-(BOOL) checkQuestion:(NSUInteger)question forAnswer:(NSUInteger)answer{
    NSString * ans = self.movieArray[question] [@"answer"];
    if ([ans intValue] == answer){
        self.correctCount++;
        return YES;
    }else{
        self.incorrectCount++;
        return NO;
    }
    
}

-(id)initWithQuiz:(NSString*)plistName{
    
    if ((self = [super init])){
        NSString *plistCatpath = [[NSBundle mainBundle] pathForResource:plistName ofType:@"plist"];
        self.movieArray = [NSMutableArray arrayWithContentsOfFile:plistCatpath];
        self.quizCount = [self.movieArray count];
    }
    return self;
}

@end
