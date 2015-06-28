//
//  ViewController.m
//  AlphaCamp
//
//  Created by yishain on 6/5/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
#import <AFNetworking.h>

@interface ViewController () {
    
    UIActivityIndicatorView *indicatorView;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    indicatorView.center = self.view.center;
    [self.view  addSubview:indicatorView];
    [indicatorView startAnimating];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)showLoginPage:(id)sender {
      [indicatorView stopAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
