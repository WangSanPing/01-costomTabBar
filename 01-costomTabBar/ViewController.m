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

/** showing */
@property (nonatomic, strong) UIViewController *show;

/** 用来存放动画的View */
@property (nonatomic, strong) UIView *contentView;

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
    
    // 添加内容view
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64)];
    [self.view addSubview:contentView];
    self.contentView = contentView;
    
    [self addChildViewController:[[oneViewController alloc] init]];
    [self addChildViewController:[[twoViewController alloc] init]];
    [self addChildViewController:[[threeViewController alloc] init]];
    
}

- (IBAction)allBtnClick:(UIButton *)sender {
    
    // 获得控制器的位置
    NSInteger index = [sender.superview.subviews indexOfObject:sender];
    // 获得旧控制器的位置
    NSInteger oldIndex = [self.childViewControllers indexOfObject:_show];
    
    [_show.view removeFromSuperview];
    _show = self.childViewControllers[index];
    _show.view.frame = self.contentView.bounds;
    [self.contentView addSubview:_show.view];
    
    // 创建动画
    CATransition *ani = [[CATransition alloc] init];
    //    ani.type = @"cube";
    // 动画类型
    ani.type = kCATransitionMoveIn;
    // 动画时间
    ani.duration = 1.0;
    // 动画进入方向
    ani.subtype = oldIndex > index? kCATransitionFromLeft:kCATransitionFromRight;
    [self.contentView.layer addAnimation:ani forKey:nil];
    
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    NSLog(@"%@ willRotateToInterfaceOrientation",self.class);
}
@end
