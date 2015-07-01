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
#import "AutoLogin.h"
#import "TabViewController.h"

@interface ViewController () {
    UIActivityIndicatorView *indicatorView;
    UIButton *loginButton;
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

- (void)viewDidAppear:(BOOL)animated {
    
    if ([AutoLogin isEqualToString:@"NO"]) {
        if ([[NSUserDefaults standardUserDefaults] objectForKey:@"isAutoLogin"] != nil) {
            if (([[NSUserDefaults standardUserDefaults] objectForKey:@"thisUsername"] != nil) && ([[NSUserDefaults standardUserDefaults] objectForKey:@"thisPassword"] != nil)) {
                
//                loginButton.hidden = 1;
                  AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
                manager = [AFHTTPRequestOperationManager manager];
                [manager POST:@"https://dojo.alphacamp.co/api/v1/login"
                    parameters:@{
                                 @"email":[[NSUserDefaults standardUserDefaults] objectForKey:@"thisUsername"],
                                 @"password":[[NSUserDefaults standardUserDefaults] objectForKey:@"thisPassword"],
                                 @"api_key":@"dd4f6237ea870fc06c9c2f5be80e9175494fba50"}
                       success:^(AFHTTPRequestOperation *operation, id responseObject) {
                        
                           [indicatorView stopAnimating];
                           
                           AutoLogin = @"YES";
                          TabViewController *tab = [self.storyboard instantiateViewControllerWithIdentifier:@"TabView"];
                           
                           [self presentViewController:tab animated:YES completion:nil];
                           
                       } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                   
                           [indicatorView stopAnimating];
                           
                       }];
            }
            else {
//                loginButton.hidden = 0;
                [[NSUserDefaults standardUserDefaults] setValue:nil forKey:@"isAutoLogin"];
                [[NSUserDefaults standardUserDefaults] setValue:nil forKey:@"thisUsername"];
                [[NSUserDefaults standardUserDefaults] setValue:nil forKey:@"thisPassword"];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
        }
    }
}

- (IBAction)loginButton:(id)sender {
    [self performSegueWithIdentifier:@"AutologinPage" sender:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
