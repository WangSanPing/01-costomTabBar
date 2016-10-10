//
//  twoViewController.m
//  01-costomTabBar
//
//  Created by 王旭 on 2016/10/10.
//  Copyright © 2016年 wangxu. All rights reserved.
//

#import "twoViewController.h"

@interface twoViewController ()

@end

@implementation twoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnClick {
    NSLog(@"Class ----->%@",NSStringFromClass([self class]));
}

@end
