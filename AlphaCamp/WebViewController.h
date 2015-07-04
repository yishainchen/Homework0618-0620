//
//  WebViewController.h
//  AlphaCamp
//
//  Created by yishain on 6/30/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WebViewController;
@protocol Webviewdelegate <NSObject>
-(void)passNum:(WebViewController *)webView;
@required

@end

@interface WebViewController : UIViewController

@property(weak ,nonatomic) IBOutlet UIWebView *myweb;
@property int Num;
@property  NSArray *webArray;
@end
