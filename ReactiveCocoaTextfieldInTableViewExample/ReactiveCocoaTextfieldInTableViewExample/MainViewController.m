//
//  MainViewController.m
//  ReactiveCocoaTextfieldInTableViewExample
//
//  Created by Mac on 2017. 2. 28..
//  Copyright © 2017년 partner. All rights reserved.
//

#import "MainViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "TableViewCell.h"

@interface MainViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"tableViewCell"];
}


#pragma mark - tableView delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableViewCell"];
    
    if (cell == nil) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"tableViewCell" forIndexPath:indexPath];
    }
    
    return cell;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
