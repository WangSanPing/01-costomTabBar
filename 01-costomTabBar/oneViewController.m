//
//  oneViewController.m
//  01-costomTabBar
//
//  Created by 王旭 on 2016/10/10.
//  Copyright © 2016年 wangxu. All rights reserved.
//

#import "oneViewController.h"

@interface oneViewController ()

@end

@implementation oneViewController

static NSString *cellID = @"cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellID];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }

    cell.textLabel.text = [NSString stringWithFormat:@"oneController---->%ld",indexPath.row];
    return cell;
}

@end
