//
//  HomePageViewController.m
//  MiaoPai
//
//  Created by 程强 on 2016/11/20.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "HomePageViewController.h"
#import "HomeViewController.h"
#import "GuanZhuTableViewController.h"
@interface HomePageViewController ()

@end

@implementation HomePageViewController

#pragma mark - PageControllerDelagate
-(NSArray<NSString *> *)titles{
    return @[@"关注", @"热门", @"同城", @"明星", @"搞笑", @"现场", @"TV秀", @"二次元", @"女神", @"时尚", @"牛人", @"韩娱", @"萌宠", @"宝宝", @"音乐", @"体育", @"汽车", @"美食", @"旅行"];
}

-(NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController{
    return self.titles.count;
}

-(UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index{
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
    layout.minimumLineSpacing = 6;
    layout.minimumInteritemSpacing = 6;
    layout.collectionView.layer.cornerRadius = 4;
    layout.collectionView.backgroundColor = [UIColor whiteColor];
    layout.sectionInset = UIEdgeInsetsMake(6, 6, 6, 6);
    CGFloat width = (long)(([UIScreen mainScreen].bounds.size.width - 18) * 0.5);
    layout.itemSize = CGSizeMake(width, 180);
//    layout.estimatedItemSize = CGSizeMake(width, 180);
    HomeViewController *vc = [[HomeViewController alloc] initWithCollectionViewLayout:layout];
    vc.typeIndex = index;
    if (index == 0) {
        GuanZhuTableViewController *guanZhuVC = [[GuanZhuTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
        return guanZhuVC;
    }
    return vc;
}



#pragma mark - Life
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
















































@end
