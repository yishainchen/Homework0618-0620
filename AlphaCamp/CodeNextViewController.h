//
//  CodeNextViewController.h
//  AlphaCamp
//
//  Created by yishain on 6/13/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CodeNextViewController : UIViewController <UIGestureRecognizerDelegate>
{
    NSString *setUsername;
    NSString *setPassword;
}

@property UITextField *username;
@property UITextField *password;
@property UIButton *LoginName;

@property UILabel *Loginusername;
@property UILabel *Loginpassword;




@end
