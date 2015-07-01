//
//  WebViewController.m
//  AlphaCamp
//
//  Created by yishain on 6/30/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "WebViewController.h"
#import "ThirdTableViewController.h"
@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _webArray = @[@"https://github.com/peoplewhite",
                 @"http://www.smashingmagazine.com/2015/04/10/thinking-like-an-app-designer/",
                 @"https://www.alphacamp.co/seminars/facebook-ad-advanced/",
                 @"https://www.alphacamp.co/seminars/rtb-highlight/",
                 @"https://www.alphacamp.co/seminars/swift-intro/",
                 @"https://www.alphacamp.co/seminars/tdd-ruby/",
                 @"https://www.alphacamp.co/seminars/tdd-js/",
                 @"https://www.alphacamp.co/seminars/parse/"
                 ];

    // Do any additional setup after loading the view.
    NSURL *url =[NSURL URLWithString:_webArray[_Num]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.myweb loadRequest:request];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
