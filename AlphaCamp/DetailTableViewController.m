//
//  DetailTableViewController.m
//  AlphaCamp
//
//  Created by yishain on 6/21/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "DetailTableViewController.h"
#import <AFNetworking.h>
@interface DetailTableViewController ()
{}
@property NSArray *courses;
@property UIRefreshControl *refershControl;
@end

@implementation DetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    arrDetail = @[ @[@"TreeHouse(iOS)"],
                   @[@"Software Develope Life Cycle",@"Software System Architure",@"User Story And Wireframe"],
                   @[@"Objective-C Basic", @"Objective-C Basic II", @"Objective-C Basic III",@"iOS UI Element Part I", @"iOS UI Element Part II &  AutoLayout Part I"],
                   @[@"Objective C-Class/Object",@"AutoLayout Part II",@"Property & Delegate"],
                   @[@"ViewController life & ARC",@"UITableView",@"Supplementation of MVC"],
                   @[@"資料儲存"]];
    
    
    arrpress= [[NSArray alloc] initWithArray:arrDetail[self.Num]];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    

}

-(void) loadCourses {
    AFHTTPRequestOperationManager *manager =[AFHTTPRequestOperationManager manager];
    [manager GET:@"https://dojo.alphacamp.co/api/v1/courses" parameters:@{@"api_key":@"dd4f6237ea870fc06c9c2f5be80e9175494fba50",@"auth_token": [[NSUserDefaults standardUserDefaults] valueForKey:@"auth_token"]} success:^(AFHTTPRequestOperation *operation, id responseObject){
        self.courses = responseObject[@"courses"];
        [self.tableView reloadData];
        [_refershControl endRefreshing];
    }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"Error: %@", error);
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
    return arrpress.count;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: forIndexPath:indexPath];

    return cell;
}
*/
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.courses[indexPath.row][@"name"];
    
    return cell;}
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
