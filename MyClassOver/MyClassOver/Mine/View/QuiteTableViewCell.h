//
//  QuiteTableViewCell.h
//  MyClassOver
//
//  Created by 李聪会 on 16/3/29.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuiteTableViewCell : UITableViewCell
@property (nonatomic,strong)UIImageView *iconImageView;
@property (nonatomic,strong)UILabel     *descLabel;
+(instancetype)creatCell:(UITableView*)tableView;
@end
