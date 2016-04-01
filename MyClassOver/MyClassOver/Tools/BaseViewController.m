//
//  BaseViewController.m
//  MyClassOver
//
//  Created by 李聪会 on 16/3/22.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor redColor];
    view.frame = CGRectMake(0, 0, 10, 10);
    [self.view addSubview:view];
    self.automaticallyAdjustsScrollViewInsets = NO;//防止表偏移问题///
//    self.view.backgroundColor = [UIColor whiteColor];
//    self.edgesForExtendedLayout = UIRectEdgeNone ;
//   self.navigationController.navigationBar.translucent = YES;//导航栏透明状态默认是yes，如果为no导航栏透明，（0，0）坐标就变成（0，64）
//
//    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    self.view.backgroundColor = DEFAULT_BackgroundView_COLOR;
    self.leftbarItem = [[UIButton alloc] init];
    self.leftbarItem.frame  =CGRectMake(0, 44/2-15, 30, 30);
    [self.leftbarItem setImage:[UIImage imageNamed:@"left_arrow"] forState:UIControlStateNormal];
    [self.leftbarItem addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    self.tabBarController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.leftbarItem];
}

- (void)backClick
{
    if (self.navigationController.viewControllers.count>1) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}
@end
