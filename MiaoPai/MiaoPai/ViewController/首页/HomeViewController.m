//
//  HomeViewController.m
//  MiaoPai
//
//  Created by 程强 on 2016/11/19.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "HomeViewController.h"
#import "ReMenCell.h"
#import "ImageCell.h"
@interface HomeViewController ()<UICollectionViewDelegateFlowLayout>
@property (nonatomic) NSMutableArray<ReMenResultModel *> *dataList;
@property (nonatomic) NSInteger page;
@end

@implementation HomeViewController
- (NSMutableArray *)dataList{
    if (!_dataList) {
        _dataList = [NSMutableArray new];
    }
    return _dataList;
}

//- (instancetype)init{
//    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
//    layout.minimumLineSpacing = 6;
//    layout.minimumInteritemSpacing = 6;
//    layout.collectionView.layer.cornerRadius = 4;
//    layout.collectionView.backgroundColor = [UIColor whiteColor];
//    layout.sectionInset = UIEdgeInsetsMake(6, 6, 6, 6);
//    CGFloat width = (long)(([UIScreen mainScreen].bounds.size.width - 18) / 2);
//    layout.itemSize = CGSizeMake(width, width / 0.55);
//    if (self = [super initWithCollectionViewLayout:layout]) {
//        
//    }
//    return self;
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor = kBackgroundColor;
    [self.collectionView registerClass:[ReMenCell class] forCellWithReuseIdentifier:@"ReMenCell"];
    [self.collectionView registerClass:[ImageCell class] forCellWithReuseIdentifier:@"ImageCell"];
//    self.collectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
//       [FindNetManager getReMenWithCompletionHandler:^(ReMenModel *model, NSError *error) {
//           [self.collectionView.mj_header endRefreshing];
//           if (!error) {
//               [self.dataList removeAllObjects];
//               [self.dataList addObjectsFromArray:model.result];
//               [self.collectionView reloadData];
//           }
//       }];
//    }];
//    [self.collectionView.mj_header beginRefreshing];
    self.collectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
       [FindNetManager getReMenWithPage:1 andWithTimestamp:@(self.dataList.lastObject.lastTime).stringValue type:self.typeIndex completionHandler:^(ReMenModel *model, NSError *error) {
           [self.collectionView.mj_header endRefreshing];
           if (!error) {
               [self.dataList removeAllObjects];
               [self.dataList addObjectsFromArray:model.result];
               [self.collectionView reloadData];
               self.page = 2;
           }
       }];
    }];
    [self.collectionView.mj_header beginRefreshing];
    self.collectionView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
       [FindNetManager getReMenWithPage:self.page andWithTimestamp:@(self.dataList.lastObject.lastTime).stringValue type:self.typeIndex completionHandler:^(ReMenModel *model, NSError *error) {
           [self.collectionView.mj_footer endRefreshing];
           if (!error) {
               [self.dataList addObjectsFromArray:model.result];
               [self.collectionView reloadData];
               self.page += 1;
           }
       }];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataList.count;
}

//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
//    return [collectionView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
//}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ReMenResultModel *model = self.dataList[indexPath.row];
    if ([model.type isEqualToString:@"channel"]) {
        ReMenCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ReMenCell" forIndexPath:indexPath];
        NSString *path = [NSString stringWithFormat:@"%@%@", model.channel.pic.base, model.channel.pic.m];
        [cell.baseIV setImageURL:path.mp_URL];
        [cell.iconIV setImageURL:model.channel.ext.owner.icon.mp_URL];
        cell.nickLb.text = model.channel.ext.owner.nick;
        cell.lcntLB.text = @(model.channel.stat.lcnt).stringValue;
        cell.ftLb.text = model.channel.ext.ft;
        return cell;
    }else {
        ImageCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ImageCell" forIndexPath:indexPath];
        [cell.iconIV setImageURL:model.img.mp_URL];
        cell.titleLb.text = model.title;
        return cell;
    }
}








































@end
