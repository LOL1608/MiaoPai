//
//  FindCell.m
//  MiaoPai
//
//  Created by 程强 on 2016/11/20.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "FindCell.h"

@implementation FindCell
-(UIImageView *)imgIV{
    if (!_imgIV) {
        _imgIV = [UIImageView new];
        [self.contentView addSubview:_imgIV];
        [_imgIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.right.equalTo(0);
            make.height.equalTo(self.imgIV.mas_width);
        }];
        _imgIV.layer.cornerRadius = self.width * 0.5;
        _imgIV.layer.borderWidth = 1;
        _imgIV.layer.borderColor = [UIColor colorWithRed:188 / 255.0 green:188 / 255.0 blue:188 / 255.0 alpha:1].CGColor;
    }
    return _imgIV;
}

-(UILabel *)titleLB{
    if (!_titleLB) {
        _titleLB = [UILabel new];
        [self.contentView addSubview:_titleLB];
        [_titleLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(0);
            make.left.equalTo(-10);
            make.right.equalTo(10);
        }];
        _titleLB.font = [UIFont systemFontOfSize:12];
        _titleLB.textColor = kSelectColor;
        _titleLB.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLB;
}
@end
