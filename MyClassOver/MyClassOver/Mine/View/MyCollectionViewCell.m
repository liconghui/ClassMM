//
//  MyCollectionViewCell.m
//  MyClassOver
//
//  Created by 李聪会 on 16/3/30.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import "MyCollectionViewCell.h"

@interface MyCollectionViewCell ()

@end

@implementation MyCollectionViewCell

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.centerLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
        self.centerLabel.textColor = [UIColor purpleColor];
        self.centerLabel.text = @"222";
        self.centerLabel.font = [UIFont systemFontOfSize:20];
        self.centerLabel.textAlignment = NSTextAlignmentCenter;
//        [self addSubview:self.centerLabel];
        
        self.imageView = [[UIImageView alloc]init];
        self.imageView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        [self addSubview:self.imageView];
        self.imageView.image = [UIImage imageNamed:@"fazhan"];
        
    }
    return self;
}

@end
