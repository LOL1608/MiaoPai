//
//  NSObject+Parse.h
//  MiaoPai
//
//  Created by 程强 on 2016/11/20.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Parse)<YYModel>
+(id)parse:(id)JSON;
@end
