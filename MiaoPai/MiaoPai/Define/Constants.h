//
//  Constants.h
//  MiaoPai
//
//  Created by 程强 on 2016/11/19.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#ifndef Constants_h
#define Constants_h

//颜色的定义
#define kSelectColor [UIColor colorWithRed:27 / 255.0 green:26 / 255.0 blue:32 /255.0 alpha:1]
#define kNormalColor [UIColor colorWithRed:135 / 255.0 green:135 / 255.0 blue:135 /255.0 alpha:1]
#define kYellowColor [UIColor colorWithRed:250 / 255.0 green:207 / 255.0 blue:40 /255.0 alpha:1]
#define kBackgroundColor [UIColor colorWithRed:225 / 255.0 green:225 / 255.0 blue:225 /255.0 alpha:1]
#define kRandomColor [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:0.7]


//网址的定义
#define kBasePath @"http://api.miaopai.com"
#define kFindPath @"/m/discover.json?os=ios&page=1&timestamp=1479627469762&token=aBcFk1a9Boifm6ddoAkd9hrMhXm8xINt&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"
//关注
#define kGuanZhuPath @"/m/recommend_follows_unlogin.json?os=ios&timestamp=1479815062289&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//热门
#define kReMenPath @"/m/v6_hot_channel.json?extend=1&os=ios&page=%ld&per=20&refresh=3&sinaad=1&timestamp=%@&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//#define kReMenPath @"http://api.miaopai.com/m/v6_hot_channel.json?extend=1&lastid=0&lasttime=0&os=ios&page=1&per=20&refresh=3&sinaad=1&timestamp=1479807330509&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//同城
#define kTongChengPath @"/m/samecity.json?os=ios&page=%ld&per=20&timestamp=%@&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//明星
#define kMingXingPath @"/m/cate2_channel.json?cateid=124&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//搞笑
#define kGaoXiaoPath @"/m/cate2_channel.json?cateid=128&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//现场
#define kXianChangPath @"/m/cate2_channel.json?cateid=136&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//TV秀
#define kTVXiuPath @"/m/cate2_channel.json?cateid=196&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//二次元
#define kErCiYuanPath @"/m/cate2_channel.json?cateid=164&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//女神
#define kLvShenPath @"/m/cate2_channel.json?cateid=132&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//时尚
#define kShiShangPath @"/m/cate2_channel.json?cateid=156&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//牛人
#define kNiuRenPath @"/m/cate2_channel.json?cateid=160&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//韩娱
#define kHanYuPath @"/m/cate2_channel.json?cateid=106&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//萌宠
#define kMengChongPath @"/m/cate2_channel.json?cateid=140&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//宝宝
#define kBaoBaoPath @"/m/cate2_channel.json?cateid=144&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//音乐
#define kYinYuePath @"/m/cate2_channel.json?cateid=172&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//体育
#define kTiYuPath @"/m/cate2_channel.json?cateid=148&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//汽车
#define kQiChePath @"/m/cate2_channel.json?cateid=114&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//美食
#define kMeiShiPath @"/m/cate2_channel.json?cateid=28&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"

//旅行
#define kLvXingPath @"/m/cate2_channel.json?cateid=168&extend=1&os=ios&page=%ld&per=20&timestamp=%@&type=news&unique_id=de05977b9be10661af58d212a0819a223775957672&uuid=de05977b9be10661af58d212a0819a223775957672&vend=miaopai&version=6.5.2"




#endif /* Constants_h */
