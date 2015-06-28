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
    NSArray *arrayimage;
    NSArray *arraylabel;
    NSArray *arraydate;
    NSArray *arraydetail;
}
@end

@implementation ThirdTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PFQuery *query = [PFQuery queryWithClassName:@"Event"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        PFFile *userImageFile = [objects valueForKey:@"image"];
        // Do something with the returned PFObject in the gameScore variable.
        [userImageFile getDataInBackgroundWithBlock:^(NSData *imgData , NSError *error) {
            NSLog(@"%@",imgData);
            
        arrayimage = [UIImage imageWithData:imgData];
        [self.tableView reloadData];
    }];
        
                }];
    PFQuery *query1 = [PFQuery queryWithClassName:@"Event"];
    [query1 findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        // Do something with the returned PFObject in the gameScore variable.
        arraylabel = [objects valueForKey:@"eventName"];
        [self.tableView reloadData];
    }];
    
    PFQuery *query2 = [PFQuery queryWithClassName:@"Event"];
     [query2 findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        // Do something with the returned PFObject in the gameScore variable
         arraydate = [objects valueForKey:@"dateString"];
        [self.tableView reloadData];
    }];
    PFQuery *query3 = [PFQuery queryWithClassName:@"Event"];
    [query3 findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        // Do something with the returned PFObject in the gameScore variable.
        arraydetail = [objects valueForKey:@"content"];
        NSLog(@"%@",arraydetail);
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
    return arraylabel.count;
}

//
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *Cell = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Cell forIndexPath:indexPath];
    
    UIImageView *iv = (UIImageView *)[cell viewWithTag:100];// view -> UIImageView
    iv.image = arrayimage[indexPath.row];
    
    UILabel *iv1 = (UILabel *)[cell viewWithTag:200];
    iv1.text = arraylabel[indexPath.row];
    
    UILabel *iv2 = (UILabel *)[cell viewWithTag:300];
    iv2.text = arraydate[indexPath.row];
    
    UITextField *iv3 = (UITextField *)[cell viewWithTag:400];
    iv3.text = arraydetail[indexPath.row];
    
    
    return cell;
}
//




//
//    
//
//}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
