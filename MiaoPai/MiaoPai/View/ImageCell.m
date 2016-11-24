//
//  ImageCell.m
//  MiaoPai
//
//  Created by tarena001 on 16/11/23.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "ImageCell.h"

@implementation ImageCell
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.layer.cornerRadius = 3;
        self.clipsToBounds = YES;
    }
    return self;
}

- (UIImageView *)iconIV{
    if (!_iconIV) {
        _iconIV = [UIImageView new];
        [self.contentView addSubview:_iconIV];
        [_iconIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(0);
        }];
        UIView *view = [UIView new];
        [self.iconIV addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.bottom.right.equalTo(0);
            make.height.equalTo(20);
        }];
        view.backgroundColor = kRandomColor;
        _titleLb = [UILabel new];
        [view addSubview:_titleLb];
        [_titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(0);
            make.centerY.equalTo(0);
        }];
        _titleLb.textColor = [UIColor whiteColor];
        _titleLb.font = [UIFont systemFontOfSize:15];
        _titleLb.textAlignment = NSTextAlignmentCenter;
    }
    return _iconIV;
}

@end
