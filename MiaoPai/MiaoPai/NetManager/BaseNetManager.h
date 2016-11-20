//
//  BaseNetManager.h
//  MiaoPai
//
//  Created by 程强 on 2016/11/20.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseNetManager : NSObject

+ (id)GET:(NSString *)path parameters:(NSDictionary *)parameters completionHandler:(void(^)(id responseObj, NSError *error))completionHandler;

+ (id)POST:(NSString *)path parameters:(NSDictionary *)parameters completionHandler:(void(^)(id responseObj, NSError *error))completionHandler;

@end
