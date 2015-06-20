//
//  CodeNextViewController.m
//  AlphaCamp
//
//  Created by yishain on 6/13/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "CodeNextViewController.h"
#import "CodeThirdViewController.h"
@interface CodeNextViewController ()

@end

@implementation CodeNextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
 
    self.username = [[UITextField alloc]initWithFrame:CGRectMake(40.0f, 104.0f, 240.0f, 30.0f)];
    self.username.placeholder = @"Input email";
    self.username.borderStyle = UITextBorderStyleRoundedRect;
  

    self.password =  [[UITextField alloc] initWithFrame:CGRectMake(40.0f, 154.0f, 240.0f, 30.0f)];
    self.password.placeholder = @"Input Password";
    self.password.borderStyle = UITextBorderStyleRoundedRect;
    self.password.secureTextEntry = 1;
    
    self.LoginName = [[UIButton alloc] initWithFrame:CGRectMake(130.0f, 300.0f, 100.0f, 48.0f)];
    [self.LoginName setBackgroundColor:[UIColor blackColor]];
    [self.LoginName setTitle:@"Login" forState:UIControlStateNormal];
    self.LoginName.tintColor = [UIColor whiteColor];
    self.LoginName.enabled = 1;
    self.LoginName.userInteractionEnabled = 1;
    [self.LoginName addTarget:self action:@selector(change2CodeThird) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.username];
    [self.view addSubview:self.password];
    [self.view addSubview:self.LoginName];
    
    UITapGestureRecognizer *tapButton = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
     tapButton.delegate = self;
      [self.view addGestureRecognizer:tapButton];
    
    setUsername = @"eric";
    setPassword = @"123";
    
}

-(void) change2CodeThird {
    if ([self.username.text isEqualToString:setUsername] && [self.password.text isEqualToString:setPassword]) {
        NSLog(@"Welcome!!");
    [self performSegueWithIdentifier:@"change2CodeThird" sender:self];
    }
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    CodeThirdViewController *thirdVC = segue.destinationViewController;
    thirdVC.Loginuser = self.username.text;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)hideKeyboard {
    [self.view endEditing:YES];
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
