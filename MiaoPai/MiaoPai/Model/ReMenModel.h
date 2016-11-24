//
//  ReMenModel.h
//  MiaoPai
//
//  Created by tarena001 on 16/11/22.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ReMenResultModel, ReMenBannerModel, ReMenBannerTopicModel, ReMenChannelModel, ReMenTopicModel, ReMenChannelExtModel, ReMenChannelExt2Model, ReMenChannelPicModel, ReMenChannelStreamModel, ReMenChannelStatModel, ReMenExtOwnerModel;
@interface ReMenModel : NSObject
@property (nonatomic, strong) NSArray<ReMenBannerModel *> * banner;
@property (nonatomic, strong) NSString * bucket;
@property (nonatomic, strong) NSString * lastid;
@property (nonatomic, strong) NSString * msg;
@property (nonatomic, assign) NSInteger page;
@property (nonatomic, assign) NSInteger per;
@property (nonatomic, strong) NSString * reid;
@property (nonatomic, strong) NSArray<ReMenResultModel *> * result;
@property (nonatomic, strong) NSString * showType;
@property (nonatomic, strong) NSString * source;
@property (nonatomic, assign) NSInteger status;
@property (nonatomic, strong) NSArray * topExtend;
@property (nonatomic, assign) NSInteger total;
@end

@interface ReMenBannerModel : NSObject
@property (nonatomic, strong) NSString * color;
@property (nonatomic, assign) BOOL extend;
@property (nonatomic, strong) NSString * gif;
@property (nonatomic, strong) NSString * img;
@property (nonatomic, assign) NSInteger isad;
@property (nonatomic, assign) NSInteger postion;
@property (nonatomic, strong) NSString * sid;
@property (nonatomic, assign) NSInteger sign;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) ReMenBannerTopicModel * topic;
@property (nonatomic, strong) NSString * type;
@end

@interface ReMenBannerTopicModel : NSObject
@property (nonatomic, strong) NSString * cover;
@property (nonatomic, strong) NSString * desc;
@property (nonatomic, strong) NSString * pic;
@property (nonatomic, strong) NSString * stpid;
@property (nonatomic, strong) NSString * topic;
@property (nonatomic, assign) BOOL type;
@end

@interface ReMenResultModel : NSObject
@property (nonatomic, assign) BOOL ad;
@property (nonatomic, strong) NSString * buttonText;
@property (nonatomic, strong) ReMenChannelModel * channel;
@property (nonatomic, strong) NSString * color;
@property (nonatomic, assign) BOOL extend;
@property (nonatomic, strong) NSString * fwdnum;
@property (nonatomic, strong) NSString * gif;
@property (nonatomic, strong) NSString * img;
@property (nonatomic, assign) NSInteger isad;
@property (nonatomic, assign) NSInteger lastTime;
@property (nonatomic, strong) NSString * relation;
@property (nonatomic, assign) NSInteger selfmark;
@property (nonatomic, assign) NSInteger sign;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) ReMenTopicModel * topic;
@property (nonatomic, strong) NSString * type;
@end

@interface ReMenChannelModel : NSObject
@property (nonatomic, strong) NSArray * categoryInfo;
@property (nonatomic, strong) ReMenChannelExtModel * ext;
@property (nonatomic, strong) ReMenChannelExt2Model * ext2;
@property (nonatomic, assign) NSInteger liveStatus;
@property (nonatomic, strong) ReMenChannelPicModel * pic;
@property (nonatomic, strong) NSString * scid;
@property (nonatomic, strong) ReMenChannelStatModel * stat;
@property (nonatomic, strong) ReMenChannelStreamModel * stream;
@property (nonatomic, strong) NSArray * topicinfo;
@property (nonatomic, assign) NSInteger type;
@end

@interface ReMenChannelExtModel : NSObject
@property (nonatomic, assign) NSInteger finishTime;
@property (nonatomic, strong) NSString * finishTimeNice;
@property (nonatomic, strong) NSString * ft;
@property (nonatomic, assign) NSInteger h;
@property (nonatomic, assign) NSInteger length;
@property (nonatomic, strong) NSString * lengthNice;
@property (nonatomic, strong) NSString * location;
@property (nonatomic, strong) ReMenExtOwnerModel * owner;
@property (nonatomic, assign) NSInteger status;
@property (nonatomic, strong) NSString * t;
@property (nonatomic, assign) NSInteger w;
@end

@interface ReMenExtOwnerModel : NSObject
@property (nonatomic, assign) NSInteger gold;
@property (nonatomic, strong) NSString * icon;
@property (nonatomic, strong) NSString * info;
@property (nonatomic, strong) NSString * loginName;
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
@end

@interface ReMenChannelExt2Model : NSObject
@property (nonatomic, assign) NSInteger createTime;
@property (nonatomic, strong) NSString * createTimeNice;
@property (nonatomic, assign) NSInteger guid;
@property (nonatomic, assign) NSInteger isPub;
@property (nonatomic, assign) NSInteger length;
@property (nonatomic, strong) NSString * vend;
@end

@interface ReMenChannelPicModel : NSObject
@property (nonatomic, strong) NSString * base;
@property (nonatomic, strong) NSString * m;
@property (nonatomic, strong) NSString * mr;
@property (nonatomic, strong) NSString * s;
@end

@interface ReMenChannelStatModel : NSObject
@property (nonatomic, assign) NSInteger ccnt;
@property (nonatomic, assign) NSInteger dcnt;
@property (nonatomic, assign) NSInteger hcnt;
@property (nonatomic, assign) NSInteger lcnt;
@property (nonatomic, assign) NSInteger scnt;
@property (nonatomic, assign) NSInteger vcnt;
@property (nonatomic, strong) NSString * vcntNice;
@end

@interface ReMenChannelStreamModel : NSObject
//and -> ands
@property (nonatomic, strong) NSString * ands;
@property (nonatomic, strong) NSString * base;
@property (nonatomic, strong) NSString * ios;
@property (nonatomic, strong) NSString * sign;
@property (nonatomic, strong) NSString * vend;
@property (nonatomic, strong) NSString * ver;
@end

@interface ReMenTopicModel : NSObject
@property (nonatomic, strong) NSString * cover;
@property (nonatomic, strong) NSString * desc;
@property (nonatomic, strong) NSString * pic;
@property (nonatomic, strong) NSString * stpid;
@property (nonatomic, strong) NSString * topic;
@property (nonatomic, assign) BOOL type;
@end

