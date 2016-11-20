//
//  FindModel.h
//  MiaoPai
//
//  Created by 程强 on 2016/11/20.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FindResultModel;
@interface FindModel : NSObject
@property (nonatomic) NSArray<FindResultModel *> *result;
@end

@interface FindResultModel : NSObject
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *url;
@end
