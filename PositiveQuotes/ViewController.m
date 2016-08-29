//
//  ViewController.m
//  PositiveQuotes
//
//  Created by Pedro Gordillo Ríos on 29/8/16.
//  Copyright © 2016 Pedro Gordillo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize quoteLabel;
@synthesize changeButton;
@synthesize quotesArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    quoteLabel.adjustsFontSizeToFitWidth=YES;
    quoteLabel.minimumScaleFactor=0.5;
    
    quotesArray = [NSArray arrayWithObjects:
                            @"You are the best",
                            @"You can do everyhing you want",
                            @"You will be successfull",
                            @"Everything will be fine",
                            @"I love you",
                            @"It'll be alright",
                            @"Don't worry",
                            @"Your girlfriend loves you",
                            @"You are able to do it",
                            @"Nothing can stop you",
                            @"Just relax",
                            @"Dont get stressed. Not worth it",
                            @"Follow your heart",
                            @"You rule in your own life",
                            @"You are your own boss",
                            @"You are worth it",
                            @"Your happiness is what matters",
                            @"Live <--> Love",
                            @"You can keep up with everything",
                            @"Just let it go",
                            @"No need to be pissed. Relax",
                            @"Breath deeply"
                            ,nil];
    
    
    int randindex = [self rand_integer];
    quoteLabel.text = quotesArray[randindex];
    
    NSTimer *myTimer = [NSTimer scheduledTimerWithTimeInterval:10
                                                        target:self
                                                      selector:@selector(updateLabel)
                                                      userInfo:nil
                                                       repeats:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) updateLabel {
   
    int randindex = [self rand_integer];
    quoteLabel.text = quotesArray[randindex];

}
- (IBAction)changeAction:(id)sender {

    int randindex = [self rand_integer];
    
    
    quoteLabel.text = quotesArray[randindex];

}

-(int)rand_integer{
    
    int min = 0;
    int max = (int)quotesArray.count;
    
    return min + arc4random_uniform(max - min);
    
}
@end
