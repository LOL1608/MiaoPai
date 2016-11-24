//
//  FindNetManager.h
//  MiaoPai
//
//  Created by 程强 on 2016/11/20.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "BaseNetManager.h"
#import "FindModel.h"
#import "ReMenModel.h"
#import "GuanZhuModel.h"
@interface FindNetManager : BaseNetManager
//发现
+(id)getFindWithCompletionHandler:(void(^)(FindModel *model, NSError *error))completionHandler;

//热门
+ (id)getReMenWithCompletionHandler:(void(^)(ReMenModel *model, NSError *error))completionHandler;

+ (id)getReMenWithPage:(NSInteger)page andWithTimestamp:(NSString *)timestamp type:(NSInteger)type completionHandler:(void(^)(ReMenModel *model, NSError *error))completionHandler;

+ (id)getGuanZhuWithCompletionHandle:(void(^)(GuanZhuModel *model, NSError *error))completionHandler;
@end
