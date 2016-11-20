//
//  NSString+MP.m
//  MiaoPai
//
//  Created by 程强 on 2016/11/20.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "NSString+MP.h"

@implementation NSString (MP)
-(NSURL *)mp_URL{
    return [NSURL URLWithString:self];
}
@end
