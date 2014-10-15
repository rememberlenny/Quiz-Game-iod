//
//  ATRQuizViewController.m
//  ATRQuizGame
//
//  Created by Leonard Bogdonoff on 10/15/14.
//
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
    - (instancetype)initWithNibName:(NSString *):nibNameOrNil
                             bundle:(NSString *):nibBundleOrNil
    {
        self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
        
        if (self){
            
            self.questions = @[@"From what is cognac made?",
                               @"What is 7+7?",
                               @"What is the capital of Vermont?"];
            self.answer    = @[@"Grapes",
                               @"14",
                               @"Montipelier"];
        }
        
        return self;
    }

    - (IBAction)questionButton:(id)sender{
        self.currentArrayIndex++;
        
        if (self.currentArrayIndex == [self.questions count]) {
            self.currentArrayIndex = 0;
        }
        
        NSString *question = self.questions[self.currentArrayIndex];

        self.questionLabel.text = question;
        self.answerLabel.text = @"???";

    }
    - (IBAction)answerButton:(id)sender{
        NSString *answer = self.answers[self.currentArrayIndex];
        
        self.answerLabel.text = answer;
    }
@end
