//
//  threeViewController.m
//  01-costomTabBar
//
//  Created by 王旭 on 2016/10/10.
//  Copyright © 2016年 wangxu. All rights reserved.
//

#import "threeViewController.h"

@interface threeViewController ()

@end

@implementation threeViewController

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

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    NSLog(@"%@ willRotateToInterfaceOrientation",self.class);
}
@end
