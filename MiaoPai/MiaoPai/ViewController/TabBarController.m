//
//  TabBarController.m
//  MiaoPai
//
//  Created by 程强 on 2016/11/19.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "TabBarController.h"
#import "HomeViewController.h"
#import "HotViewController.h"
#import "MoreViewController.h"
#import "FindViewController.h"
#import "MineViewController.h"

@interface TabBarController ()

@property (nonatomic) HomeViewController *homeVC;
@property (nonatomic) HotViewController *hotVC;
@property (nonatomic) MoreViewController *moreVC;
@property (nonatomic) FindViewController *findVC;
@property (nonatomic) MineViewController *mineVC;

@end

@implementation TabBarController

#pragma mark - Lazy
-(HomeViewController *)homeVC{
    if (!_homeVC) {
        _homeVC = [HomeViewController new];
        _homeVC.title = @"首页";
        _homeVC.tabBarItem.image = [UIImage imageNamed:@"MPTTabarHome_49x36_"];
        _homeVC.tabBarItem.selectedImage = [UIImage imageNamed:@"MPTTabarHomeSelected_49x36_"];
    }
    return _homeVC;
}

-(HotViewController *)hotVC{
    if (!_hotVC) {
        _hotVC = [HotViewController new];
        _hotVC.title =@"热榜";
        _hotVC.tabBarItem.image = [UIImage imageNamed:@"MPTTabarFriends_49x36_"];
        _hotVC.tabBarItem.selectedImage = [UIImage imageNamed:@"MPTTabarFriendsSelected_49x36_"];
    }
    return _hotVC;
}

-(MoreViewController *)moreVC{
    if (!_moreVC) {
        _moreVC = [MoreViewController new];
    }
    return _moreVC;
}

-(FindViewController *)findVC{
    if (!_findVC) {
        _findVC = [FindViewController new];
        _findVC.title = @"发现";
        _findVC.tabBarItem.image = [UIImage imageNamed:@"MPTTabarTopic_49x36_"];
        _findVC.tabBarItem.selectedImage = [UIImage imageNamed:@"MPTTabarTopicSelected_49x36_"];
        
    }
    return _findVC;
}

-(MineViewController *)mineVC{
    if (!_mineVC) {
        _mineVC = [MineViewController new];
        _mineVC.title = @"我的";
        _mineVC.tabBarItem.image = [UIImage imageNamed:@"MPTTabarProfile_49x36_"];
        _mineVC.tabBarItem.selectedImage = [UIImage imageNamed:@"MPTTabarProfileSelected_49x36_"];
    }
    return _mineVC;
}


#pragma mark - Life
- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationController *navi0 = [[UINavigationController alloc] initWithRootViewController:self.homeVC];
    UINavigationController *navi1 = [[UINavigationController alloc] initWithRootViewController:self.hotVC];
    UINavigationController *navi2 = [[UINavigationController alloc] initWithRootViewController:self.moreVC];
    UINavigationController *navi3 = [[UINavigationController alloc] initWithRootViewController:self.findVC];
    UINavigationController *navi4 = [[UINavigationController alloc] initWithRootViewController:self.mineVC];
    self.viewControllers = @[navi0, navi1, navi2, navi3, navi4];
    
    //全局
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: kSelectColor} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: kSelectColor} forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}














































@end
