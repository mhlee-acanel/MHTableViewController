//
//  MHTableViewController.m
//  Popcloud_iphoneNT
//
//  Created by mhlee on 14. 1. 21..
//  Copyright (c) 2014년 lhsg. All rights reserved.
//

#import "MHTableViewController.h"

@interface MHTableViewController ()

@end

@implementation MHTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        _cellSetupBlock = ^(UITableViewCell *cell, id object){};
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if ([_array count] > 0) return 1;
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MHTableViewCell";
    UITableViewCell *cell_ = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell_ == nil)
    {
        cell_ = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    _cellSetupBlock(cell_, [_array objectAtIndex:indexPath.row]);
    return cell_;
}

@end
