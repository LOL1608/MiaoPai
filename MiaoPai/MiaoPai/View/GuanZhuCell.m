//
//  GuanZhuCell.m
//  MiaoPai
//
//  Created by tarena001 on 16/11/23.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "GuanZhuCell.h"

@implementation GuanZhuCell
- (UIImageView *)iconIV{
    if (!_iconIV) {
        _iconIV = [UIImageView new];
        [self.contentView addSubview:_iconIV];
        [_iconIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(10);
            make.centerY.equalTo(0);
            make.size.equalTo(36);
        }];
        _iconIV.layer.cornerRadius = 18;
        _iconIV.contentMode = UIViewContentModeScaleAspectFill;
        _iconIV.clipsToBounds = YES;
    }
    return _iconIV;
}

- (UILabel *)nameLb{
    if (!_nameLb) {
        _nameLb = [UILabel new];
        [self.contentView addSubview:_nameLb];
        [_nameLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.iconIV.mas_right).offset(10);
            make.right.equalTo(self.addBtn.mas_left).offset(-10);
            make.bottom.equalTo(self.contentView.mas_centerY).offset(2);
        }];
        _nameLb.font = [UIFont systemFontOfSize:15];
    }
    return _nameLb;
}

- (UILabel *)titleLb{
    if (!_titleLb) {
        _titleLb = [UILabel new];
        [self.contentView addSubview:_titleLb];
        [_titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(self.nameLb);
            make.top.equalTo(self.nameLb.mas_bottom).offset(2);
        }];
        _titleLb.font = [UIFont systemFontOfSize:13];
        _titleLb.textColor = [UIColor grayColor];
    }
    return _titleLb;
}

- (UIButton *)addBtn{
    if (!_addBtn) {
        _addBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        [self.contentView addSubview:_addBtn];
        [_addBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(-10);
            make.centerY.equalTo(0);
            make.size.offset(CGSizeMake(60, 25));
        }];
        _addBtn.layer.cornerRadius = 2;
        _addBtn.clipsToBounds = YES;
        _addBtn.backgroundColor = [UIColor colorWithRed:253 / 255.0 green:212 / 255.0 blue:48 / 255.0 alpha:1.0];
        [_addBtn setTitle:@"+ 关注" forState:UIControlStateNormal];
        [_addBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return _addBtn;
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
