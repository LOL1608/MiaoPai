//
//  ReMenCell.h
//  MiaoPai
//
//  Created by tarena001 on 16/11/22.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReMenCell : UICollectionViewCell
//图片
@property (nonatomic) UIImageView *baseIV;
//标题
@property (nonatomic) UILabel *ftLb;
//头像
@property (nonatomic) UIImageView *iconIV;
//发布者
@property (nonatomic) UILabel *nickLb;
//点击
@property (nonatomic) UILabel *lcntLB;
@end
