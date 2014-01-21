//
//  MHTableViewController.h
//  Popcloud_iphoneNT
//
//  Created by mhlee on 14. 1. 21..
//  Copyright (c) 2014년 lhsg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MHTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *array;
@property (nonatomic, strong) void (^cellSetupBlock)(UITableViewCell *cell, id object);

@end
