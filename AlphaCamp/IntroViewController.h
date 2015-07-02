//
//  IntroViewController.h
//  AlphaCamp
//
//  Created by yishain on 6/16/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "ViewController.h"

@interface IntroViewController : UIViewController
{
    NSDictionary *intro1;
    NSDictionary *intro2;
    NSDictionary *intro3;
    NSDictionary *intro4;
    NSDictionary *intro5;
    NSDictionary *intro6;
    
    NSDictionary *Teacher1;
    NSDictionary *Teacher2;
    NSDictionary *Teacher3;
    NSDictionary *Teacher4;
    NSDictionary *Teacher5;
    NSDictionary *Teacher6;
    
    NSDictionary *Member1;
    NSDictionary *Member2;
    NSDictionary *Member3;
    NSDictionary *Member4;
    NSDictionary *Member5;
    NSDictionary *Member6;
    NSDictionary *Member7;
  
    
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
