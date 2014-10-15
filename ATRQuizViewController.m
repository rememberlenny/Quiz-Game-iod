//
//  ATRQuizViewController.m
//  ATRQuizGame
//
//  Created by Leonard Bogdonoff on 10/15/14.
//
//

#import "ATRQuizViewController.h"

@interface ATRQuizViewController ()
    @property (nonatomic) int *indexOfArrayPosition;
    @property (nonatomic, copy) NSArray *questions;
    @property (nonatomic, copy) NSArray *answers;

    @property (nonatomic, weak) IBOutlet UILabel *questionLabel;
    @property (nonatomic, weak) IBOutlet UILabel *answerLabel;
@end

@implementation ATRQuizViewController
    - (IBAction)questionButton:(id)sender;
    - (IBAction)answerButton:(id)sender;
@end
