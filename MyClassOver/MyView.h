//
//  MyView.h
//  MyClassOver
//
//  Created by 李聪会 on 16/3/23.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^BtnBlock)(id param,NSInteger btnTag);
@interface MyView : UIView
@property (nonatomic,strong)UIImageView *icon;
@property (nonatomic,strong)UILabel    *showLabel;
@property (nonatomic,strong)UIButton    *turnBtn;
@property (nonatomic,copy)BtnBlock      backBlcok;
- (id)init;
@end
