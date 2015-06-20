//
//  CodeThirdViewController.m
//  AlphaCamp
//
//  Created by yishain on 6/13/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "CodeThirdViewController.h"

@interface CodeThirdViewController ()

@end

@implementation CodeThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.Username1 = [[UILabel alloc] initWithFrame:CGRectMake(107.0f, 149.0f, 213.0f, 34.0f)];
    self.Username1.text = self.Loginuser;
   [self.view addSubview:self.Username1];
    
    
    
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
