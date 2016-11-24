//
//  GuanZhuHeadCell.m
//  MiaoPai
//
//  Created by tarena001 on 16/11/23.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "GuanZhuHeadCell.h"

@implementation GuanZhuHeadCell
- (UIImageView *)image{
    if (!_image) {
        _image = [UIImageView new];
        [self.contentView addSubview:_image];
        [_image mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(10);
            make.centerY.equalTo(0);
            make.size.equalTo(36);
        }];
        _image.layer.cornerRadius = 18;
        _image.clipsToBounds = YES;
    }
    return _image;
}

- (UILabel *)titleLb{
    if (!_titleLb) {
        _titleLb = [UILabel new];
        [self.contentView addSubview:_titleLb];
        [_titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.image.mas_right).offset(10);
            make.centerY.equalTo(0);
        }];
        _titleLb.font = [UIFont systemFontOfSize:15];
    }
    return _titleLb;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
