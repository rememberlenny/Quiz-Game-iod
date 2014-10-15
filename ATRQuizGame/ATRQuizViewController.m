//
//  ATRQuizViewController.m
//  ATRQuizGame
//
//  Created by Leonard Bogdonoff on 10/15/14.
//  Copyright (c) 2014 New Public Art Foundation. All rights reserved.
//

#import "ATRQuizViewController.h"

@interface ATRQuizViewController ()

@property (nonatomic) int currentArrayIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation ATRQuizViewController

- (instancetype) initWithNibName:(NSString *)nibNameOrNil
                          bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.questions  = @[@"Where does beer come from?",
                            @"What is 7+7",
                            @"My name is?"];
        
        self.answers    = @[@"Cans and bottles",
                            @"14",
                            @"Lenny"];
    }
    
    return self;
}

- (IBAction)questionButton:(id)sender
{
    self.currentArrayIndex++;
    
    if(self.currentArrayIndex == [self.questions count]){
        self.currentArrayIndex = 0;
    }
    NSString *question = self.questions[self.currentArrayIndex];
    self.questionLabel.text = question;
    self.answerLabel.text = @"???";
}

- (IBAction)answerButton:(id)sender
{
    NSString *answer = self.answers[self.currentArrayIndex];
    self.answerLabel.text = answer;
}

@end
