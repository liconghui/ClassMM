//
//  Contants.h
//  MyClassOver
//
//  Created by 李聪会 on 16/3/22.
//  Copyright © 2016年 huihui. All rights reserved.
//

#ifndef Contants_h
#define Contants_h
#import "UIView+Extension.h"



#define HEIGHT [UIScreen mainScreen].bounds.size.height
#define WIDTH [UIScreen mainScreen].bounds.size.width

#define DEFAULT_BackgroundView_COLOR UIColorFromRGB(0xefefef, 1.0)

#define IOS7 ([[[UIDevice currentDevice] systemVersion] floatValue]>=7.0)


#define UIColorFromRGB(rgbValue,alphaValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:alphaValue]

#define COLOR_TABBAR_NORMAL UIColorFromRGB(0x808080, 1.0)
#define COLOR_TABBAR_Selected COLOR_ORANGE
#define COLOR_ORANGE UIColorFromRGB(0xff7f00, 1.0)

#endif /* Contants_h */
