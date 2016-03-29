//
//  MyView.m
//  MyClassOver
//
//  Created by 李聪会 on 16/3/23.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (id)init
{
    if (self=[super init]) {
        [self creatUI];
    }
    return self;
}
- (void)creatUI
{
    self.icon = [[UIImageView alloc] init];
    self.icon.backgroundColor = [UIColor redColor];
    [self addSubview:self.icon];
    self.showLabel = [[UILabel alloc] init];
    self.showLabel.font = [UIFont systemFontOfSize:13];
    self.showLabel.text = @"汉字圈";
    self.showLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.showLabel];
    self.turnBtn = [[UIButton alloc] init];
    [self.turnBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.turnBtn];
}
- (void)btnClick:(UIButton*)sender
{
    if (self.backBlcok) {
        self.backBlcok(nil,self.tag);
    }
}
- (void)layoutSubviews{
    [super layoutSubviews];
    float startx = 30;
    self.icon.frame = CGRectMake(startx, startx/2, self.width-2*startx, self.width-2*startx);
    self.showLabel.frame  =CGRectMake(0, self.width-startx, self.width, 13);
    self.turnBtn.frame = CGRectMake(0, 0, self.width, self.width);
    
}
@end
