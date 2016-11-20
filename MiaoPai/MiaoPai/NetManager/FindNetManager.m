//
//  FindNetManager.m
//  MiaoPai
//
//  Created by 程强 on 2016/11/20.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "FindNetManager.h"

@implementation FindNetManager
+(id)getFindWithCompletionHandler:(void (^)(FindModel *, NSError *))completionHandler{
    return [self GET:kFindPath parameters:nil completionHandler:^(id responseObj, NSError *error) {
        !completionHandler ?: completionHandler([FindModel parse:responseObj], error);
    }];
}
@end
