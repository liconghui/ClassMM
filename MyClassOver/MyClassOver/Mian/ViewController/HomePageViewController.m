//
//  HomePageViewController.m
//  MyClassOver
//
//  Created by 李聪会 on 16/3/22.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import "HomePageViewController.h"
#import "ViewController.h"
#define BtnTag (1001)
@interface HomePageViewController ()

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBarController.title = @"我是首页";
    self.leftbarItem.hidden = YES;
    [self creatUI];
}
- (void)creatUI
{
    float startX = 15;
    float startY =64+15;
    float btnwidth = (WIDTH-30-10)/2;
    for (int i=0; i<3; i++) {
        UIButton *btn = [[UIButton alloc] init];
        btn.backgroundColor = [UIColor yellowColor];
        switch (i) {
            case 0:
                btn.backgroundColor = [UIColor yellowColor];
                break;
            case 1:
                btn.backgroundColor = [UIColor redColor];
                break;
            case 2:
                btn.backgroundColor = [UIColor blueColor];
                break;
            default:
                break;
        }
        btn.tag = BtnTag+i;
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        btn.frame  =CGRectMake(startX+i%2*(btnwidth+10), startY+i/2*(btnwidth+10), btnwidth, btnwidth);
        [self.view addSubview:btn];
    }
    
}
- (void)btnClick:(UIButton*)sender
{
    ViewController *view = [[ViewController alloc] init];
    [self.navigationController pushViewController:view animated:YES];
}
@end
