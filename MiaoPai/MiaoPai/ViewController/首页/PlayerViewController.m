
//
//  PlayerViewController.m
//  MiaoPai
//
//  Created by tarena001 on 16/11/24.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "PlayerViewController.h"
@import AVFoundation;
@interface PlayerViewController ()
@property (nonatomic) AVPlayer *player;
@property (nonatomic) AVPlayerLayer *playerLayer;
@end

@implementation PlayerViewController
- (id)initWithReMenResultModel:(ReMenResultModel *)dataList{
    if (self = [super init]) {
        _dataList = dataList;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [NSString stringWithFormat:@"%@%@", self.dataList.channel.stream.base, self.dataList.channel.stream.sign];
    self.player = [AVPlayer playerWithURL:[NSURL URLWithString:path]];
    [self.player play];
    self.playerLayer = [AVPlayerLayer playerLayerWithPlayer:self.player];
    [self.view.layer addSublayer:self.playerLayer];
    self.playerLayer.frame = self.view.frame;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
