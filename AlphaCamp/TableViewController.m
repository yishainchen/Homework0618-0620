//
//  TableViewController.m
//  AlphaCamp
//
//  Created by yishain on 6/21/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "TableViewController.h"
#import "DetailTableViewController.h"
#import <AFNetworking.h>
@interface TableViewController ()
{
    NSArray *arr;
    NSArray *arrdetail;
    NSDictionary *dic;
    NSDictionary *dicDetail;
}
@end

@implementation TableViewController

- (void)viewDidLoad {
        [super viewDidLoad];
        
        arr123 = [[NSArray alloc] initWithObjects:@"Pre-study Course", @"Week 1", @"Week 2", @"Week 3", @"Miscellaneout Topics", @"Week 4", nil];
    ;
    [self loadCourses];
   
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
        return 6;
    }

    
    - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        static NSString *CellIndentifier = @"CellIdentifier";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIndentifier];
        
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIndentifier];
        }
        
        cell.textLabel.text =[arr123 objectAtIndex:indexPath.row];
        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
        //    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
        
        // Configure the cell...
        
        return cell;
    }
    - (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
        
        DetailTableViewController *detailview = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
        detailview.Num = indexPath.row;
        [self.navigationController pushViewController:detailview animated:YES];
        NSLog(@"%ld",(long)indexPath.row);
    }

-(void) loadCourses {
    AFHTTPRequestOperationManager *manager =[AFHTTPRequestOperationManager manager];
    [manager GET:@"https://dojo.alphacamp.co/api/v1/courses/syllabus" parameters:@{@"api_key":@"dd4f6237ea870fc06c9c2f5be80e9175494fba50",@"auth_token": [[NSUserDefaults standardUserDefaults] valueForKey:@"auth_token"]}  success:^(AFHTTPRequestOperation *operation, id responseObject){

        dic = responseObject[@"syllabus"];
        dicDetail = dic[@"section"];
        arr= dicDetail[@"name"];
        
        
        
        NSLog(@"count =  %@",arr);
        
        [self.tableView reloadData];
      
    }
     
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"Error: %@", error);
         }];
    
}

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
    
- (IBAction)ActionRoll:(id)sender {
   
    
}
    @end