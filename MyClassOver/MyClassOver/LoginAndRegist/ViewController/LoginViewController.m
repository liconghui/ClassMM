//
//  LoginViewController.m
//  CompleteACourse
//
//  Created by 李聪会 on 16/3/22.
//  Copyright © 2016年 liconghui. All rights reserved.
//

#import "LoginViewController.h"
#import "HomePageViewController.h"
@interface LoginViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.leftbarItem.hidden = YES;
    self.title = @"登陆";
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:@"登陆" forState:UIControlStateNormal];
    button.frame  = CGRectMake(0, 64, 100, 100);
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
//    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, WIDTH, HEIGHT-64) style:UITableViewStylePlain];
//    tableView.delegate  =self;
//    tableView.dataSource  =self;
//    //[self.view addSubview:tableView];
   
}
- (void)btnClick
{
    HomePageViewController *home = [[HomePageViewController alloc] init];
    [self.navigationController pushViewController:home animated:YES];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell= [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = @"111";
    return cell;
}
@end
