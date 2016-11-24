//
//  GuanZhuModel.h
//  MiaoPai
//
//  Created by tarena001 on 16/11/23.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GuanZhuResultModel, GuanZhuResultListModel, GuanZhuResultListWeiboInfoModel, GuanZhuResultListMediaCntModel, GuanZhuResultListEventCntModel;
@interface GuanZhuModel : NSObject
@property (nonatomic, strong) NSString * msg;
@property (nonatomic, strong) GuanZhuResultModel * result;
@property (nonatomic, assign) NSInteger status;
@end

@interface GuanZhuResultModel : NSObject
@property (nonatomic, strong) NSArray<GuanZhuResultListModel *> * list;
@property (nonatomic, assign) NSInteger total;
@end

@interface GuanZhuResultListModel : NSObject
@property (nonatomic, strong) GuanZhuResultListEventCntModel * eventCnt;
@property (nonatomic, assign) NSInteger gold;
@property (nonatomic, strong) NSString * icon;
@property (nonatomic, strong) NSString * info;
@property (nonatomic, strong) NSString * loginName;
@property (nonatomic, strong) GuanZhuResultListMediaCntModel * mediaCnt;
@property (nonatomic, strong) NSString * nick;
@property (nonatomic, strong) NSString * oldIcon;
@property (nonatomic, assign) NSInteger org_v;
@property (nonatomic, strong) NSString * signed_info;
@property (nonatomic, assign) NSInteger status;
@property (nonatomic, strong) NSString * suid;
@property (nonatomic, strong) NSString * talent_name;
@property (nonatomic, assign) NSInteger talent_signed;
@property (nonatomic, assign) NSInteger talent_v;
@property (nonatomic, assign) NSInteger top_num;
@property (nonatomic, assign) BOOL v;
@property (nonatomic, strong) GuanZhuResultListWeiboInfoModel * weiboInfo;
@end

@interface GuanZhuResultListEventCntModel : NSObject
@property (nonatomic, assign) NSInteger event;
@property (nonatomic, assign) NSInteger fans;
@property (nonatomic, assign) NSInteger follow;
@end

@interface GuanZhuResultListMediaCntModel : NSObject
@property (nonatomic, assign) NSInteger forward;
@property (nonatomic, assign) NSInteger media;
//private -> privateField
@property (nonatomic, assign) NSInteger privateField;
//public -> publicField
@property (nonatomic, assign) NSInteger publicField;
@property (nonatomic, assign) NSInteger shared;
@property (nonatomic, assign) NSInteger total;
@end

@interface GuanZhuResultListWeiboInfoModel : NSObject
@property (nonatomic, strong) NSString * nick;
@property (nonatomic, assign) NSInteger v;
@property (nonatomic, strong) NSString * vReason;
@property (nonatomic, assign) NSInteger weiboFans;
@property (nonatomic, assign) NSInteger weiboFansNice;
@property (nonatomic, strong) NSString * weiboId;
@end
