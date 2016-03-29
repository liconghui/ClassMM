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
#import "MyView.h"
#import "DesViewController.h"
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
        MyView *myview = [[MyView alloc] init];
        myview.layer.borderWidth = 1;
        myview.layer.borderColor = [UIColor yellowColor].CGColor;
        switch (i) {
            case 0:
                myview.showLabel.text = @"汉字文化简介";
                break;
            case 1:
                myview.showLabel.text = @"汉字文化发展";
                break;
            case 2:
               myview.showLabel.text = @"汉字文化圈";
                break;
            default:
                break;
        }
        myview.tag = BtnTag+i;
        __weak HomePageViewController *safeSelf = self;
        myview.backBlcok = ^(id param,NSInteger btnTag){
            DesViewController *de = [[DesViewController alloc] init];
           
            switch (btnTag) {
                case 1001:
                     de.indexHtml = @"index";
                     de.title = @"汉字文化简介";
                    break;
                case 1002:
                     de.indexHtml = @"Dev";
                     de.title = @"汉字文化发展";
                    break;
                case 1003:
                    de.indexHtml = @"QU";
                     de.title = @"汉字文化圈";
                    break;
                default:
                    break;
            }
            [safeSelf.navigationController pushViewController:de animated:YES];
        
        };
        myview.frame  =CGRectMake(startX+i%2*(btnwidth+10), startY+i/2*(btnwidth+10), btnwidth, btnwidth);
        [self.homeScrollView addSubview:myview];
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
