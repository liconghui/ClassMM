//
//  HomePageViewController.m
//  MyClassOver
//
//  Created by 李聪会 on 16/3/22.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import "HomePageViewController.h"
#import "ViewController.h"
#import "CircleScrollView.h"
#define BtnTag (1001)
@interface HomePageViewController ()<CircleScrollDelegate>

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.leftbarItem.hidden = YES;
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor redColor];
    view.frame = CGRectMake(0, 0, 10, 10);
    [self.view addSubview:view];
    [self creatScrollview];
    [self creatUI];
}
- (void)creatScrollview
{
    CircleScrollView *scr1 = [[CircleScrollView alloc]initWithImgs:@[@"1.jpg",@"2.jpg",@"3.jpg"] fram:CGRectMake(0,64,WIDTH, 300)];
    scr1.circleScrollType = CircleScrollTypePageControl;
    scr1.circleScrollStyle = CircleScrollStyleSteadfast;
    scr1.circleDelegate = self;
    [self.view addSubview:scr1];
}
- (void)creatUI
{
    float startX = 15;
    float startY =64+15+300;
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
    
}
-(void)circleScroll:(CircleScrollView *)scrollView selectIndex:(NSInteger)index
{
}
@end
