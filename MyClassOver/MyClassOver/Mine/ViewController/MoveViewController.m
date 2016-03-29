//
//  MoveViewController.m
//  MyClassOver
//
//  Created by 李聪会 on 16/3/23.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import "MoveViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import <AVKit/AVKit.h>
#import "PlayerViewController.h"
@interface MoveViewController ()

@end

@implementation MoveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 64, 100, 100)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"播发" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
}
- (void)btnClick
{
    PlayerViewController *pv = [[PlayerViewController alloc] initWithUrl:@"http://i.snssdk.com/neihan/video/playback/?video_id=04eddc8b904543debe0a7e7d4119eb54&quality=origin&line=1&is_gif=0"];
    [self.navigationController presentViewController:pv animated:YES completion:^{
        
    }];
}
@end
