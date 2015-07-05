//
//  BlogWebViewController.m
//  AlphaCamp
//
//  Created by yishain on 7/4/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "BlogWebViewController.h"
#import "IntroViewController.h"
@interface BlogWebViewController ()

@end

@implementation BlogWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString:@"https://www.alphacamp.co"];
    NSURLRequest *request  = [NSURLRequest requestWithURL:url];
    [self.blogWebView loadRequest:request];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnBack:(id)sender {
    IntroViewController *intro = [self.storyboard instantiateViewControllerWithIdentifier:@"Auto"];
    [self presentViewController:intro animated:YES completion:nil];
    
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
