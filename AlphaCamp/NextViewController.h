//
//  NextViewController.h
//  AlphaCamp
//
//  Created by yishain on 6/11/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NextViewController : UIViewController<UIGestureRecognizerDelegate>
@property (nonatomic, retain) IBOutlet UITextField *userMail;
@property (nonatomic, retain) IBOutlet UITextField *userPassword;
@property NSString *Eric;
@property NSString *PASSWORD;
@end
