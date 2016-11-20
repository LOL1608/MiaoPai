//
//  FindModel.m
//  MiaoPai
//
//  Created by 程强 on 2016/11/20.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "FindModel.h"

@implementation FindModel
+(NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"result": [FindResultModel class]};
}
@end

@implementation FindResultModel

@end
