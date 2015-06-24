//
//  NextViewController.m
//  AlphaCamp
//
//  Created by yishain on 6/11/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "NextViewController.h"
#import "TabViewController.h"
#import <AFNetworking.h>
@interface NextViewController ()
{
    NSDictionary *params;
}
@end

@implementation NextViewController

- (void)viewDidLoad {
 

//_userMail.text = @"123";
//_userPassword.text = @"456";


//
//    self.Eric = @"";
//    self.PASSWORD =  @"";
//    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
//    [gestureRecognizer setDelegate:self];
//    [self.view addGestureRecognizer:gestureRecognizer];
}

- (IBAction)showUserName:(id)sender {
//{  if ([self.userMail.text isEqualToString:self.Eric ] && [self.userPassword.text isEqualToString:self.PASSWORD ]) {
//    NSLog(@"userMail:%@", self.userMail.text);
//    TabViewController *tabView = [self.storyboard instantiateViewControllerWithIdentifier:@"TabView"];
//    [self presentViewController:tabView animated:YES completion:nil];}
//
    params = @ {@"email" :self.userMail.text,@"password" :self.userPassword.text,@"api_key":@"dd4f6237ea870fc06c9c2f5be80e9175494fba50" };
    
AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];

    
[manager POST:@"https://dojo.alphacamp.co/api/v1/login" parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
    NSLog(@"JSON: %@", responseObject);{
    [[NSUserDefaults standardUserDefaults] setValue:responseObject
     [@"auth_token"] forKey:@"auth_token"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    TabViewController *tabView = [self.storyboard instantiateViewControllerWithIdentifier:@"TabView"];
    [self presentViewController:tabView animated:YES completion:nil];
    }
}
      failure:^(AFHTTPRequestOperation *operation, NSError *error) {
          NSLog(@"Error: %@", error);
          UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Hey" message:@"Wrong Password" preferredStyle:UIAlertControllerStyleAlert];
          [self presentViewController:alert animated:YES completion:nil];
          UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertViewStyleDefault handler:^(UIAlertAction *action) {
              [alert dismissViewControllerAnimated:YES completion:nil];
              
          }];
          [alert addAction:cancel];

      }];
    

}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    NSLog(@"gestureRecognizerShouldBegin:");
    return YES;
}


//- (void) View:(UIViewController *)View didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    TabViewController *tabView = [self.storyboard instantiateViewControllerWithIdentifier:@"TabView"];
//    [self presentViewController:tabView animated:YES completion:nil];
//}

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
