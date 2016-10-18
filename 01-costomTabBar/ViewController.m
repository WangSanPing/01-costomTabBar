//
//  ViewController.m
//  01-costomTabBar
//
//  Created by 王旭 on 2016/10/9.
//  Copyright © 2016年 wangxu. All rights reserved.
//

#import "ViewController.h"
#import "oneViewController.h"
#import "twoViewController.h"
#import "threeViewController.h"

@interface ViewController ()

/** btns */
@property (nonatomic, strong) NSArray *array;

/** showing */
@property (nonatomic, strong) UIViewController *show;

@end


/**
 如果两个控制器的view是父子关系(不管直接还是间接的父子关系)，那么这两个控制器也应该为父子关系
 [a.view addSubview:b.view];
 [a addChildViewController:b]
 或
 [a.view addSubview:b.view];
 [otherView addSubView:b.view]
 [a addChildViewController:b];
 */
@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
//    _array = @[
//               [[oneViewController alloc] init],
//               [[twoViewController alloc] init],
//               [[threeViewController alloc] init]
//               ];
    
    [self addChildViewController:[[oneViewController alloc] init]];
    [self addChildViewController:[[twoViewController alloc] init]];
    [self addChildViewController:[[threeViewController alloc] init]];

}

- (IBAction)allBtnClick:(UIButton *)sender {
    
    // 获得控制器的位置
    NSInteger index = [sender.superview.subviews indexOfObject:sender];
    
    [_show.view removeFromSuperview];
    _show = self.childViewControllers[index];
    _show.view.frame = CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64);
    [self.view addSubview:_show.view];
    
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    NSLog(@"%@ willRotateToInterfaceOrientation",self.class);
}
@end
