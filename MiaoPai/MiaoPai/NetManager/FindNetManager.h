//
//  FindNetManager.h
//  MiaoPai
//
//  Created by 程强 on 2016/11/20.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "BaseNetManager.h"
#import "FindModel.h"

@interface FindNetManager : BaseNetManager
+(id)getFindWithCompletionHandler:(void(^)(FindModel *model, NSError *error))completionHandler;
@end
