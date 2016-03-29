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
#define bannerSecla (800.0/320.0)
#define BannerHeight (WIDTH/bannerSecla)
@interface HomePageViewController ()<CircleScrollDelegate>
@property (nonatomic,strong)UIScrollView *homeScrollView;
@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.leftbarItem.hidden = YES;
   
    [self creatScrollview];
    [self creatUI];
}
- (void)creatScrollview
{
    CircleScrollView *scr1 = [[CircleScrollView alloc]initWithImgs:@[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg"] fram:CGRectMake(0,64,WIDTH, BannerHeight)];
    scr1.circleScrollType = CircleScrollTypePageControl;
    scr1.circleScrollStyle = CircleScrollStyleSteadfast;
    scr1.circleDelegate = self;
    [self.view addSubview:scr1];
}
- (void)creatUI
{
    
    self.homeScrollView  = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 64+BannerHeight, WIDTH, HEIGHT-64-49-BannerHeight)];
    self.homeScrollView.showsHorizontalScrollIndicator = NO;
    self.homeScrollView.showsVerticalScrollIndicator = NO;
    [self.view addSubview:self.homeScrollView];
    float startX = 15;
    float startY =15;
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
        [self.homeScrollView addSubview:btn];
        if (i==2) {
            self.homeScrollView.contentSize = CGSizeMake(WIDTH, 2*startX+10+2*btnwidth);
        }
    }
    
}
- (void)btnClick:(UIButton*)sender
{
    
}
-(void)circleScroll:(CircleScrollView *)scrollView selectIndex:(NSInteger)index
{
}
@end
