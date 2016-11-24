//
//  FindNetManager.m
//  MiaoPai
//
//  Created by 程强 on 2016/11/20.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "FindNetManager.h"

@implementation FindNetManager
//发现
+(id)getFindWithCompletionHandler:(void (^)(FindModel *, NSError *))completionHandler{
    return [self GET:kFindPath parameters:nil completionHandler:^(id responseObj, NSError *error) {
        !completionHandler ?: completionHandler([FindModel parse:responseObj], error);
    }];
}

//热门
+ (id)getReMenWithCompletionHandler:(void (^)(ReMenModel *, NSError *))completionHandler{
    return [self GET:kReMenPath parameters:nil completionHandler:^(id responseObj, NSError *error) {
        !completionHandler ?: completionHandler([ReMenModel parse:responseObj], error);
    }];
}

+ (id)getReMenWithPage:(NSInteger)page andWithTimestamp:(NSString *)timestamp type:(NSInteger)type completionHandler:(void (^)(ReMenModel *, NSError *))completionHandler{
    NSString *path = nil;
    switch (type) {
        case 0:
            path = kGuanZhuPath;
            break;
        case 1:
            path = kReMenPath;
            break;
        case 2:
            path = kTongChengPath;
            break;
        case 3:
            path = kMingXingPath;
            break;
        case 4:
            path = kGaoXiaoPath;
            break;
        case 5:
            path = kXianChangPath;
            break;
        case 6:
            path = kTVXiuPath;
            break;
        case 7:
            path = kErCiYuanPath;
            break;
        case 8:
            path = kLvShenPath;
            break;
        case 9:
            path = kShiShangPath;
            break;
        case 10:
            path = kNiuRenPath;
            break;
        case 11:
            path = kHanYuPath;
            break;
        case 12:
            path = kMengChongPath;
            break;
        case 13:
            path = kBaoBaoPath;
            break;
        case 14:
            path = kYinYuePath;
            break;
        case 15:
            path = kTiYuPath;
            break;
        case 16:
            path = kQiChePath;
            break;
        case 17:
            path = kMeiShiPath;
            break;
        case 18:
            path = kLvXingPath;
            break;
    }
    path = [NSString stringWithFormat:path, page, timestamp];
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        !completionHandler ?: completionHandler([ReMenModel parse:responseObj], error);
    }];
}

+ (id)getGuanZhuWithCompletionHandle:(void (^)(GuanZhuModel *, NSError *))completionHandler{
    return [self GET:kGuanZhuPath parameters:nil completionHandler:^(id responseObj, NSError *error) {
        !completionHandler ?: completionHandler([GuanZhuModel parse:responseObj], error);
    }];
}
@end
