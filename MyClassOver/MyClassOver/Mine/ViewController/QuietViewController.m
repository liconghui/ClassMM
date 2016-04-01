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
@property (nonatomic,strong)NSArray     *imageArray;
@end

@implementation QuietViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageArray = @[@"jg.jpg",@"jw.jpg",@"dz.jpg",@"xiaoz.jpg",@"ls.jpg",@"ks.jpg",@"cs6.jpg",@"xs2.jpg"];
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
    return self.imageArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 110;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QuiteTableViewCell *cell = [QuiteTableViewCell creatCell:tableView];
    cell.iconImageView.image = [UIImage imageNamed:self.imageArray[indexPath.row]];
    switch (indexPath.row) {
        case 0:
            cell.descLabel.text = @"甲骨文发展";
            break;
        case 1:
            cell.descLabel.text = @"金文历程";
            break;
        case 2:
            cell.descLabel.text = @"大篆演变";
            break;
        case 3:
            cell.descLabel.text = @"小篆产生";
            break;
        case 4:
            cell.descLabel.text = @"隶书发展";
            break;
        case 5:
            cell.descLabel.text = @"楷书介绍";
            break;
        case 6:
            cell.descLabel.text = @"草书发现";
            break;
        case 7:
            cell.descLabel.text = @"行书演化";
            break;
            
        default:
            break;
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    QuiteTableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    DesViewController *desV = [[DesViewController alloc] init];
    desV.title = cell.descLabel.text;
    switch (indexPath.row) {
        case 0:
             desV.indexHtml = @"Jiaguwen";
           
            break;
        case 1:
            desV.indexHtml = @"Jinwen";
            break;
        case 2:
            desV.indexHtml = @"Dazhuan";
            break;
        case 3:
            desV.indexHtml = @"xiaozhuan";
            break;
        case 4:
            desV.indexHtml = @"lishu";
            break;
        case 5:
            desV.indexHtml = @"kaishu";
            break;
        case 6:
            desV.indexHtml = @"caoshu";
            break;
        case 7:
            desV.indexHtml = @"xingshu";
            break;

        default:
            break;
    }
   
    [self.navigationController pushViewController:desV animated:YES];
}
@end
