//
//  ThirdTableViewController.m
//  AlphaCamp
//
//  Created by yishain on 6/27/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "ThirdTableViewController.h"
#import <Parse/Parse.h>
#import "WebViewController.h"
@interface ThirdTableViewController ()
{
    NSMutableArray *arrayimage;
    NSMutableArray *arraylabel;
    NSMutableArray *arraydate;
    NSMutableArray *arraydetail;
    NSArray *eventArray;
   
    int Number;
}
@property  UIButton *webButton;

@end

@implementation ThirdTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//   arrayimage =  [[NSMutableArray alloc]init];
//   arraylabel =  [[NSMutableArray alloc]init];
//   arraydate  =  [[NSMutableArray alloc]init];
//   arraydetail=  [[NSMutableArray alloc]init];
//    
    PFQuery *query = [PFQuery queryWithClassName:@"Event"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *arr, NSError *error) {
        eventArray = arr;
        [self.tableView reloadData];
  
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return eventArray.count;
}

//
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *Cell = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Cell forIndexPath:indexPath];

    PFObject *event = eventArray[indexPath.row];
    
    UIImageView *iv = (UIImageView *)[cell viewWithTag:100];// view -> UIImageView
//    iv.image = arrayimage[indexPath.row];
    
    iv.image = nil;//不重複使用畫面
    PFFile *imageData = event[@"image"];
    [imageData getDataInBackgroundWithBlock:^(NSData *imgData , NSError *error) {
        if (error == nil) {
            iv.image = [UIImage imageWithData:imgData];
            iv.backgroundColor = [UIColor clearColor];
        }
        else {

        }
    }];
    
    UILabel *iv1 = (UILabel *)[cell viewWithTag:200];
//    iv1.text = arraylabel[indexPath.row][@"eventName"];
    iv1.text = event[@"eventName"];
    NSLog(@"%@",iv1.text);
    
    UILabel *iv2 = (UILabel *)[cell viewWithTag:300];
    iv2.text = event[@"dateString"];
//    iv2.text = arraydate[indexPath.row][@"dateString"];
    
    UITextField *iv3 = (UITextField *)[cell viewWithTag:400];
    iv3.text = event[@"content"];
//    iv3.text = arraydetail[indexPath.row][@"content"];
    
//    _webButton = (UIButton *)[cell viewWithTag:500];
    Number = indexPath.row;
    
    UIButton *iv4 = (UIButton *)[cell viewWithTag:500];
//    [iv4 addTarget:self action:@selector(move:) forControlEvents:UIControlEventTouchUpInside];
    [iv4 addTarget:self action:@selector(move:) forControlEvents:UIControlEventTouchUpInside];
//    iv4.tag = indexPath.row;
//    
    NSLog(@"%d",Number);
    return cell;
   
}
//
-(void)move:(UIButton *)button {
//   _webArray[_webButton.tag]
    NSLog(@"press");
    [self performSegueWithIdentifier:@"sean" sender:self];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
   WebViewController *web = segue.destinationViewController;
   web.Num = Number;
   NSLog(@"prepare  %d",web.Num);
}
@end
