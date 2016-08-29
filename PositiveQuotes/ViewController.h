//
//  ViewController.h
//  PositiveQuotes
//
//  Created by Pedro Gordillo Ríos on 29/8/16.
//  Copyright © 2016 Pedro Gordillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *quoteLabel;
@property (weak, nonatomic) IBOutlet UIButton *changeButton;
@property (retain,nonatomic) NSArray *quotesArray;

- (IBAction)changeAction:(id)sender;

@end

