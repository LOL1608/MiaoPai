//
//  FindViewController.m
//  MiaoPai
//
//  Created by 程强 on 2016/11/19.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "FindViewController.h"
#import "FindCell.h"
#import "FindNetManager.h"

@interface FindViewController ()
@property (nonatomic) NSArray<FindResultModel *> *dataList;
@end

@implementation FindViewController
#pragma mark - Lazy
-(NSArray<FindResultModel *> *)dataList{
    if (!_dataList) {
        [FindNetManager getFindWithCompletionHandler:^(FindModel *model, NSError *error) {
            if (!error) {
                self.dataList = model.result;
                [self.collectionView reloadData];
            }
        }];
    }
    return _dataList;
}

#pragma mark - Life
- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerClass:[FindCell class] forCellWithReuseIdentifier:@"FindCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - CollectionViewController Delegate


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataList.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    FindCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"FindCell" forIndexPath:indexPath];
    
    [cell.imgIV setImageURL:self.dataList[indexPath.row].icon.mp_URL];
    cell.titleLB.text = self.dataList[indexPath.row].name;
    
    return cell;
}


































@end
