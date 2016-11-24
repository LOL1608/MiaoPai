//
//  ReMenCell.m
//  MiaoPai
//
//  Created by tarena001 on 16/11/22.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "ReMenCell.h"

@implementation ReMenCell
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.layer.cornerRadius = 3;
        self.clipsToBounds = YES;
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}
- (UIImageView *)baseIV{
    if (!_baseIV) {
        _baseIV = [UIImageView new];
        [self.contentView addSubview:_baseIV];
//        self.contentView.backgroundColor = [UIColor whiteColor];
//        self.contentView.layer.cornerRadius = 3;
        [_baseIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.right.equalTo(0);
            make.height.equalTo(self.contentView.mas_height).multipliedBy(0.55);
//            make.height.equalTo(100);
        }];
    }
    return _baseIV;
}

- (UILabel *)ftLb{
    if (!_ftLb) {
        _ftLb = [UILabel new];
        [self.contentView addSubview:_ftLb];
        [_ftLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(15);
            make.top.equalTo(self.iconIV.mas_bottom).offset(10);
            make.right.equalTo(-15);
//            make.bottom.mas_greaterThanOrEqualTo(-10);
        }];
        _ftLb.font = [UIFont systemFontOfSize:15];
        _ftLb.numberOfLines = 2;
    }
    return _ftLb;
}

- (UIImageView *)iconIV{
    if (!_iconIV) {
        _iconIV = [UIImageView new];
        [self.contentView addSubview:_iconIV];
        [_iconIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(10);
            make.top.equalTo(self.baseIV.mas_bottom).offset(-10);
            make.size.equalTo(30);
        }];
        _iconIV.layer.cornerRadius = 15;
        _iconIV.clipsToBounds = YES;
        _iconIV.contentMode = UIViewContentModeScaleAspectFill;
        _iconIV.layer.borderWidth = 2;
        _iconIV.layer.borderColor = [UIColor whiteColor].CGColor;
    }
    return _iconIV;
}

- (UILabel *)nickLb{
    if (!_nickLb) {
        _nickLb = [UILabel new];
        [self.contentView addSubview:_nickLb];
        [_nickLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.iconIV.mas_right).offset(5);
            make.top.equalTo(self.baseIV.mas_bottom).offset(5);
            make.right.equalTo(self.lcntLB.mas_left).offset(-5);
        }];
        _nickLb.font = [UIFont systemFontOfSize:12];
        _nickLb.textColor = [UIColor grayColor];
    }
    return _nickLb;
}

- (UILabel *)lcntLB{
    if (!_lcntLB) {
        _lcntLB = [UILabel new];
        [self.contentView addSubview:_lcntLB];
        [_lcntLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(-5);
            make.top.equalTo(self.baseIV.mas_bottom).offset(5);
            make.width.equalTo(40);
        }];
        _lcntLB.textAlignment = NSTextAlignmentRight;
        _lcntLB.font = [UIFont systemFontOfSize:12];
        _lcntLB.textColor = [UIColor grayColor];
    }
    return _lcntLB;
}
@end
