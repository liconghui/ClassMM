//
//  QuietViewController.m
//  MyClassOver
//
//  Created by 李聪会 on 16/3/23.
//  Copyright © 2016年 huihui. All rights reserved.
//  

#import "QuietViewController.h"
#import "QuiteTableViewCell.h"
#import "DesViewController.h"
@interface QuietViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong)UITableView *quitTableView;
@end

@implementation QuietViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatTab];
}
- (void)creatTab
{
    self.quitTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, WIDTH, HEIGHT-64-49) style:UITableViewStylePlain];
    self.quitTableView.delegate  = self;
    self.quitTableView.dataSource = self;
    [self.view addSubview:self.quitTableView];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 110;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QuiteTableViewCell *cell = [QuiteTableViewCell creatCell:tableView];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DesViewController *desV = [[DesViewController alloc] init];
    [self.navigationController pushViewController:desV animated:YES];
}
@end
