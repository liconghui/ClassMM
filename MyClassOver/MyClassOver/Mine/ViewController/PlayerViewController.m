//
//  PlayerViewController.m
//  MyClassOver
//
//  Created by 李聪会 on 16/3/29.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import "PlayerViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>
@interface PlayerViewController ()<AVPlayerViewControllerDelegate>
{
    AVPlayerViewController      *_playerController;
    AVPlayer                    *_player;
    AVAudioSession              *_session;
    NSString                    *_urlString;

}

@end

@implementation PlayerViewController
- (id)initWithUrl:(NSString *)url {
    self = [super init];
    if (self) {
        _urlString = url;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    _session = [AVAudioSession sharedInstance];
    [_session setCategory:AVAudioSessionCategoryPlayback error:nil];
    
    _player = [AVPlayer playerWithURL:[NSURL URLWithString:_urlString]];
    _playerController = [[AVPlayerViewController alloc] init];
    _playerController.player = _player;
    _playerController.videoGravity = AVLayerVideoGravityResizeAspect;
    _playerController.delegate = self;
    _playerController.allowsPictureInPicturePlayback = true;    //画中画，iPad可用
    _playerController.showsPlaybackControls = true;
    
    [self addChildViewController:_playerController];
    _playerController.view.translatesAutoresizingMaskIntoConstraints = true;    //AVPlayerViewController 内部可能是用约束写的，这句可以禁用自动约束，消除报错
    _playerController.view.frame = self.view.bounds;
    [self.view addSubview:_playerController.view];
    
    [_playerController.player play];    //自动播放
}


#pragma mark - AVPlayerViewControllerDelegate
- (void)playerViewControllerWillStartPictureInPicture:(AVPlayerViewController *)playerViewController {
    NSLog(@"%s", __FUNCTION__);
}

- (void)playerViewControllerDidStartPictureInPicture:(AVPlayerViewController *)playerViewController {
    NSLog(@"%s", __FUNCTION__);
}

- (void)playerViewController:(AVPlayerViewController *)playerViewController failedToStartPictureInPictureWithError:(NSError *)error {
    NSLog(@"%s", __FUNCTION__);
}

- (void)playerViewControllerWillStopPictureInPicture:(AVPlayerViewController *)playerViewController {
    NSLog(@"%s", __FUNCTION__);
}

- (void)playerViewControllerDidStopPictureInPicture:(AVPlayerViewController *)playerViewController {
    NSLog(@"%s", __FUNCTION__);
}

- (BOOL)playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart:(AVPlayerViewController *)playerViewController {
    NSLog(@"%s", __FUNCTION__);
    return true;
}

- (void)playerViewController:(AVPlayerViewController *)playerViewController restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(void (^)(BOOL))completionHandler {
    NSLog(@"%s", __FUNCTION__);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
