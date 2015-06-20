//
//  CollectionViewController.h
//  Homework0615
//
//  Created by yishain on 6/17/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollectionViewCell.h"
@interface CollectionViewController : UICollectionViewController<NSURLConnectionDelegate>

{
    NSMutableArray *movie1;
    UILabel *label;
    NSMutableData *_responseData;

}



@end
