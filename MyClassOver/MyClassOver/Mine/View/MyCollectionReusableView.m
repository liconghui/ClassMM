//
//  MyCollectionReusableView.m
//  MyClassOver
//
//  Created by 李聪会 on 16/3/30.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import "MyCollectionReusableView.h"

@implementation MyCollectionReusableView
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self confingSubViews];
    }
    return self;
}
-(void)confingSubViews
{
    self.desLabel = [[UILabel alloc] init];
    self.desLabel.frame = CGRectMake(15, 10, self.frame.size.width-15, self.frame.size.height-10);
    [self addSubview:self.desLabel];
//    self.backgroundColor = [UIColor whiteColor];
    self.desLabel.text = @"文化发展";
}
@end
