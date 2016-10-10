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

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _array = @[
               [[oneViewController alloc] init],
               [[twoViewController alloc] init],
               [[threeViewController alloc] init]
               ];
}

- (IBAction)allBtnClick:(UIButton *)sender {
    
    NSInteger index = [sender.superview.subviews indexOfObject:sender];
    
    [_show.view removeFromSuperview];
    _show = _array[index];
    _show.view.frame = CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64);
    [self.view addSubview:_show.view];
    
}


@end
