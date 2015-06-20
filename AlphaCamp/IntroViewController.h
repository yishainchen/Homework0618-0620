//
//  IntroViewController.h
//  AlphaCamp
//
//  Created by yishain on 6/16/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "ViewController.h"

@interface IntroViewController : ViewController
{
    NSDictionary *intro1;
    NSDictionary *intro2;
    NSDictionary *intro3;
    NSDictionary *intro4;
    
    NSDictionary *Teacher1;
    NSDictionary *Teacher2;
    NSDictionary *Teacher3;
    
    
    
    NSDictionary *Member1;
    NSDictionary *Member2;
    NSDictionary *Member3;
    
    NSArray *Arrcount;
    
    
    NSArray *arr1;
    NSArray *arr2;
    NSArray *arr3;
    IBOutlet UILabel *label1 ;
    IBOutlet UIImageView *view1;
    IBOutlet UITextView *eric;
}
- (IBAction)setmentedControlValueChanged:(id)sender;


@end
