//
//  NSObject+Parse.m
//  MiaoPai
//
//  Created by 程强 on 2016/11/20.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "NSObject+Parse.h"

@implementation NSObject (Parse)
+ (id)parse:(id)JSON{
    if ([JSON isKindOfClass:[NSDictionary class]]) {
        return [self modelWithJSON:JSON];
    }
    if ([JSON isKindOfClass:[NSArray class]]) {
        return [NSArray modelArrayWithClass:self.class json:JSON];
    }
    return JSON;
}
@end
