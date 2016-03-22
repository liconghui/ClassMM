//
//  FirstLunchViewController.m
//  CompleteACourse
//
//  Created by 李聪会 on 16/3/22.
//  Copyright © 2016年 liconghui. All rights reserved.
//

#import "FirstLunchViewController.h"
#import "LoginViewController.h"
#import "AppDelegate.h"
@interface FirstLunchViewController ()

@end

@implementation FirstLunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    LoginViewController *login = [[LoginViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:login];
    AppDelegate *app = (AppDelegate*)[UIApplication sharedApplication].delegate;
    app.window.rootViewController = nav;
    
}


@end
