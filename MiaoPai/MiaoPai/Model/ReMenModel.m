//
//  ReMenModel.m
//  MiaoPai
//
//  Created by tarena001 on 16/11/22.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "ReMenModel.h"

@implementation ReMenModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"result": @"ReMenResultModel", @"banner": @"ReMenBannerModel"};
}
@end

@implementation ReMenBannerModel

@end

@implementation ReMenBannerTopicModel

@end

@implementation ReMenResultModel

@end

@implementation ReMenChannelModel

@end

@implementation ReMenChannelExtModel

@end

@implementation ReMenExtOwnerModel

@end

@implementation ReMenChannelExt2Model

@end

@implementation ReMenChannelPicModel

@end

@implementation ReMenChannelStatModel

@end

@implementation ReMenChannelStreamModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"ands": @"and"};
}
@end

@implementation ReMenTopicModel

@end

