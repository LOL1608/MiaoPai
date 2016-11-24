//
//  GuanZhuModel.m
//  MiaoPai
//
//  Created by tarena001 on 16/11/23.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "GuanZhuModel.h"

@implementation GuanZhuModel

@end

@implementation GuanZhuResultModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"list": @"GuanZhuResultListModel"};
}
@end

@implementation GuanZhuResultListModel

@end

@implementation GuanZhuResultListEventCntModel

@end

@implementation GuanZhuResultListMediaCntModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"privateField": @"private", @"publicField": @"public"};
}
@end

@implementation GuanZhuResultListWeiboInfoModel

@end
