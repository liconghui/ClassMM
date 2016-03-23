//
//  ViewController.M  程序首页（3个tab）
//  CommunityService
//
//  Created by 李聪会 on 15/5/5.
//  Copyright (c) 2015年 lee. All rights reserved.
//

#import "ViewController.h"
#import "HomePageViewController.h"
#import "XCTabBar.h"
#import "QuietViewController.h"
#import "MoveViewController.h"
#define kTabbarBtnTag 1001
@interface ViewController ()<XCTabBarDelegate>
//{
//    NSArray *_titleArr;
////    HomePageViewController *homePage;
////    CommunityHomeViewController *communtiy;
////    XCMineViewController *myInfo;
////    XCBeforeLoginViewController *myInfo;
//}

@property (nonatomic, weak) XCTabBar *customTabBar;
@property (nonatomic,weak) HomePageViewController *homePage;
@property (nonatomic,weak) QuietViewController *quietPage;
@property (nonatomic,weak) MoveViewController *movePage;

@end

@implementation ViewController

-(void)dealloc
{
    NSLog(@"%s",__func__);
}
//ViewController 是继承 UITabBarController的

#pragma mark - 初始化方法
- (XCTabBar *)customTabBar
{
    if (!_customTabBar) {
        XCTabBar *customTabBar = [[XCTabBar alloc] init];
        customTabBar.frame = self.tabBar.bounds;
        customTabBar.delegate = self;
        [self.tabBar addSubview:customTabBar];
        self.customTabBar = customTabBar;
    }
    return _customTabBar;
}

#pragma mark init方法内部调用

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.view.backgroundColor = [UIColor whiteColor];
        
        [self setupAllChildVCs];
    }
    return self;
}

#pragma mark view加载完毕

- (void)viewDidLoad
{
    [super viewDidLoad];
    
  
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // 移除系统自动产生的UITabBarButton
    for (UIView *child in self.tabBar.subviews) {
        // 私有API  UITabBarButton
        if ([child isKindOfClass:[UIControl class]]) {
            [child removeFromSuperview];
        }
    }
}

#pragma mark 初始化自己的所有子控制器
- (void)setupAllChildVCs
{
    // 首页
    HomePageViewController *home = [[HomePageViewController alloc] init];
    [self setupOneChildVC:home title:@"首页" imageName:@"homepage_normal" selectedImageName:@"homepage_selected"];
    self.homePage = home;
//
//    // 橙社汇
    QuietViewController *message = [[QuietViewController alloc] init];
    //    message.view;
    [self setupOneChildVC:message title:@"静" imageName:@"community_normal" selectedImageName:@"community_selected"];
    self.quietPage = message;
//
    //我
    MoveViewController *profile = [[MoveViewController alloc] init];
    [self setupOneChildVC:profile title:@"我" imageName:@"mine_normal" selectedImageName:@"mine_selected"];
    self.movePage = profile;
}

#pragma mark 初始化一个子控制器

- (void)setupOneChildVC:(UIViewController *)child title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    child.title = title;
    
    child.tabBarItem.image = [UIImage imageNamed:imageName];
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    if (IOS7) { // 如果是iOS7, 不需要渲染图片
        selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    
    child.tabBarItem.selectedImage = selectedImage;
    
    
    //    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:child];
    
    
    
    [self addChildViewController:child];
    
    [self.customTabBar addTabBarButton:child.tabBarItem];
}

#pragma mark -XCTabBarDelegate
- (void)tabBar:(XCTabBar *)tabBar didSelectButtonFrom:(NSInteger)from to:(NSInteger)to
{
    switch (to) {
        case 0:
            self.title = @"首页";
            break;
        case 1:
              self.title = @"静";
            break;
        case 2:
            self.title = @"动";
            break;
            
        default:
            break;
    }
    self.selectedIndex = to;
    
   
}




@end
