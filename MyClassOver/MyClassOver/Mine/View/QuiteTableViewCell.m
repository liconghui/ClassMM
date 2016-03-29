//
//  QuiteTableViewCell.m
//  MyClassOver
//
//  Created by 李聪会 on 16/3/29.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import "QuiteTableViewCell.h"

@implementation QuiteTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
+(instancetype)creatCell:(UITableView*)tableView
{
    
    QuiteTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell) {
        
        cell = [[QuiteTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self creatSubView];
    }
    return self;
}
- (void)creatSubView
{
    self.iconImageView = [[UIImageView alloc] init];
    self.iconImageView.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:self.iconImageView];
    self.descLabel = [[UILabel alloc] init];
    self.descLabel.text = @"文字发展史";
    self.descLabel.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:self.descLabel];
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    float starx =15;
    self.iconImageView.frame = CGRectMake(starx, starx, 80, 80);
    self.descLabel.frame = CGRectMake(CGRectGetMaxX(self.iconImageView.frame)+starx,starx, WIDTH-CGRectGetMaxX(self.iconImageView.frame)-2*starx, 80);
    
}
@end
