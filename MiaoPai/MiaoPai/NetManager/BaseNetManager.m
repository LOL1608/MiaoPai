//
//  BaseNetManager.m
//  MiaoPai
//
//  Created by 程强 on 2016/11/20.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "BaseNetManager.h"

@implementation BaseNetManager

+ (id)GET:(NSString *)path parameters:(NSDictionary *)parameters completionHandler:(void (^)(id, NSError *))completionHandler{
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:kBasePath.mp_URL];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html", @"application/json", @"text/json", @"text/javascript", @"text/plain", nil];
    return [manager GET:path parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"正确");
        !completionHandler?:completionHandler(responseObject, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"错误");
        !completionHandler ?: completionHandler(nil, error);
    }];
    
}

+(id)POST:(NSString *)path parameters:(NSDictionary *)parameters completionHandler:(void (^)(id, NSError *))completionHandler{
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:kBasePath.mp_URL];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html", @"application/json", @"text/json", @"text/javascript", @"text/plain", nil];
    return [manager GET:path parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        !completionHandler?:completionHandler(responseObject, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        !completionHandler ?: completionHandler(nil, error);
    }];
}

@end
