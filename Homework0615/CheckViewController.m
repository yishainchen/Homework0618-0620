//
//  CheckViewController.m
//  Homework0615
//
//  Created by yishain on 6/18/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "CheckViewController.h"
#import "CollectionViewController.h"
@interface CheckViewController ()

@end

@implementation CheckViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myUsername = @"eric";
    self.myPassword = @"123";
    // Do any additional setup after loading the view.
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

- (IBAction)PressMe:(id)sender {
    
    UIAlertController * alert=  [UIAlertController
                                  alertControllerWithTitle:@"My Title"
                                  message:@"Enter User Credentials"
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField){
        textField.placeholder = @"Username";
        [textField addTarget:self action:@selector(Savename:) forControlEvents:UIControlEventEditingChanged];
    }];
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField){
        textField.placeholder = @"Password";
  [textField addTarget:self action:@selector(SavePassword:) forControlEvents:UIControlEventEditingChanged];
    textField.secureTextEntry = YES;
    }];
    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault  handler:^(UIAlertAction * action) {
        if ([self.myUsername isEqualToString:self.username1] && [self.myPassword isEqualToString:self.passWord1]) {
                      [self performSegueWithIdentifier:@"Change2View" sender:self];
        }
      
                                               }];
    UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        [alert dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [alert addAction:ok];
    [alert addAction:cancel];
    [self presentViewController:alert animated:YES completion:nil];
    }
-(void)Savename:(UITextField *)username {
    self.username1 = username.text;
    }
-(void)SavePassword:(UITextField *)password {
    self.passWord1 = password.text;
    }
    
//    UIActivityIndicatorView *indiactor = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
//    indiactor.center = CGPointMake(130, 60);
//    indiactor.color = [UIColor greenColor];
//    [indiactor startAnimating];
//    [alert.view addSubview:indiactor];
  
    


                        

@end