//
//  PlayerViewController.h
//  MiaoPai
//
//  Created by tarena001 on 16/11/24.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerViewController : UIViewController
- (id)initWithReMenResultModel:(ReMenResultModel *)dataList;
@property (nonatomic) ReMenResultModel *dataList;
@end
