//
//  NextViewController.m
//  AlphaCamp
//
//  Created by yishain on 6/11/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "NextViewController.h"
#import "TabViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.Eric = @"eric";
    self.PASSWORD =  @"12345";
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    [gestureRecognizer setDelegate:self];
    [self.view addGestureRecognizer:gestureRecognizer];
}

- (IBAction)showUserName:(id)sender
{  if ([self.userMail.text isEqualToString:self.Eric ] && [self.userPassword.text isEqualToString:self.PASSWORD ]) {
    NSLog(@"userMail:%@", self.userMail.text);
    TabViewController *tabView = [self.storyboard instantiateViewControllerWithIdentifier:@"TabView"];
    [self presentViewController:tabView animated:YES completion:nil];}
   
else {
    NSLog(@"Wrong Mail");
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Hey" message:@"Wrong Password" preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alert animated:YES completion:nil];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertViewStyleDefault handler:^(UIAlertAction *action) {
        [alert dismissViewControllerAnimated:YES completion:nil];
        
    }];
    [alert addAction:cancel];

}
}
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    NSLog(@"gestureRecognizerShouldBegin:");
    return YES;
}


- (void) View:(UIViewController *)View didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    TabViewController *tabView = [self.storyboard instantiateViewControllerWithIdentifier:@"TabView"];
    [self presentViewController:tabView animated:YES completion:nil];
}

- (void)hideKeyboard {
    [self.view endEditing:YES];
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
