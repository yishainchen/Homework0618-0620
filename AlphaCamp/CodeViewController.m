//
//  CodeViewController.m
//  AlphaCamp
//
//  Created by yishain on 6/13/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "CodeViewController.h"
#import "CodeNextViewController.h"

@interface CodeViewController ()

@end

@implementation CodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor blackColor]];
    
    ViewLogo = [[UIImageView alloc] initWithFrame:CGRectMake(47.0f, 146.0f, 227.0f, 48.0f)];
    ViewLogo.image = [UIImage imageNamed:@"Screen"];
    [self.view addSubview:ViewLogo];
    ViewLogo.contentMode = UIViewContentModeScaleAspectFill;

    button1 = [UIButton buttonWithType:UIButtonTypeSystem];
//    button1 = [[UIButton alloc] initWithFrame:CGRectMake(130.0f, 300.0f, 100.0f, 48.0f)];
    button1.frame = CGRectMake(130.0f, 300.0f, 100.0f, 48.0f);
    [button1 setBackgroundColor:[UIColor redColor]];

    [button1 setTitle:@"Login" forState:UIControlStateNormal];
    [button1 sizeToFit];
    [self.view addSubview:button1];
    [button1 addTarget:self action:@selector(change2CodeNext) forControlEvents:UIControlEventTouchUpInside];
}


-(void) change2CodeNext {
    [self performSegueWithIdentifier:@"change2CodeNext" sender:self];
    
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
