//
//  Quiz.h
//  QuoteQuiz
//
//  Created by Ruben on 11/04/14.
//  Copyright (c) 2014 Ruben Pla. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Quiz : NSObject

@property (retain, nonatomic) NSMutableArray *movieArray;
@property (assign, nonatomic) NSInteger correctCount;
@property (assign, nonatomic) NSInteger incorrectCount;
@property (assign, nonatomic) NSInteger quizCount;
@property (strong, readonly, nonatomic) NSString * quote;
@property (strong, readonly, nonatomic) NSString * ans1;
@property (strong, readonly, nonatomic) NSString * ans2;
@property (strong, readonly, nonatomic) NSString * ans3;
@property (assign, nonatomic) NSInteger tipCount;
@property (strong, nonatomic) NSString * tip;

- (id)initWithQuiz: (NSString*)pListname;
-(void) nextQuestion : (NSUInteger) idx;
-(BOOL) checkQuestion: (NSUInteger) question forAnswer: (NSUInteger) answer;



@end
