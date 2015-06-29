//
//  ThirdTableViewController.m
//  AlphaCamp
//
//  Created by yishain on 6/27/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "ThirdTableViewController.h"
#import <Parse/Parse.h>
@interface ThirdTableViewController ()
{
    NSMutableArray *arrayimage;
    NSMutableArray *arraylabel;
    NSMutableArray *arraydate;
    NSMutableArray *arraydetail;
    NSArray *eventArray;
}
@end

@implementation ThirdTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
   arrayimage =  [[NSMutableArray alloc]init];
   arraylabel =  [[NSMutableArray alloc]init];
   arraydate  =  [[NSMutableArray alloc]init];
   arraydetail=  [[NSMutableArray alloc]init];
    
    PFQuery *query = [PFQuery queryWithClassName:@"Event"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *arr, NSError *error) {
        eventArray = arr;
        [self.tableView reloadData];
    }];
//    }
//     
//        [arraylabel addObjectsFromArray:arr];
//        [arraydate addObjectsFromArray:arr];
//        [arraydetail addObjectsFromArray:arr];
//        [self.tableView reloadData];
//        __block NSInteger counter = 0;
//        for (PFObject *obj in arr) {
//            
//            PFFile *userImageFile = obj[@"image"];
//            [userImageFile getDataInBackgroundWithBlock:^(NSData *imgData , NSError *error) {
//                UIImage *img = [UIImage imageWithData:imgData];
//                
//                if (img) {
//                    [arrayimage addObject:img];
//                }
//
//                else if (arraylabel.count > arrayimage.count) {
//                [arrayimage addObject:[UIImage imageNamed:@"Kung"]];
//                        
//                        NSLog(@"%@",arrayimage);
//                }
//                counter ++;
//                if (counter == arr.count) {
//                    [self.tableView reloadData];
//                }
//            }
//             ];
//        }
//
//    }
//     ];
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
    
    iv.image = nil;//不重複只用畫面
    PFFile *imageData = event[@"image"];
    [imageData getDataInBackgroundWithBlock:^(NSData *imgData , NSError *error) {
        if (error == nil) {
            iv.image = [UIImage imageWithData:imgData];
        }
    }];
//    iv.image = event[@"image"];
    
    UILabel *iv1 = (UILabel *)[cell viewWithTag:200];
//    iv1.text = arraylabel[indexPath.row][@"eventName"];
    iv1.text = event[@"eventName"];
    
    UILabel *iv2 = (UILabel *)[cell viewWithTag:300];
    iv2.text = event[@"dateString"];
//    iv2.text = arraydate[indexPath.row][@"dateString"];
    
    UITextField *iv3 = (UITextField *)[cell viewWithTag:400];
    iv3.text = event[@"content"];
//    iv3.text = arraydetail[indexPath.row][@"content"];
    
    
    return cell;
}
//


@end
