//
//  MineViewController.m
//  MiaoPai
//
//  Created by 小王 on 2016/11/25.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "MineViewController.h"
#define kRow indexPath.row

@interface MineViewController ()
@property (strong, nonatomic) IBOutlet UITableViewCell *userInfoCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *guanZhuCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *tuiSongCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *mianLiuLiangCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *fuLiCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *zanGuoCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *tuCaoCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *settingCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *liShiCell;

@end

@implementation MineViewController
#pragma mark - Life
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.sectionHeaderHeight = 10;
    self.tableView.sectionFooterHeight = 10;
    
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 1)];
    self.tableView.contentInset = UIEdgeInsetsMake(-1, 0, 0, 0);
    
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:case 3:
            return 1;
            break;
            
        case 1:case 4:
            return 2;
            break;
        default:
            return 3;
            break;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
        case 0:
            return self.userInfoCell;
            break;
            
        case 1:
            if (kRow == 0) {
                return self.guanZhuCell;
            }
            return self.tuiSongCell;
            break;
            
        case 2:
            if (kRow == 0) {
                return self.mianLiuLiangCell;
            }else if (kRow == 1) {
                return self.zanGuoCell;
            }else{
                return self.liShiCell;
            }
            break;
            
        case 3:
            return self.fuLiCell;
            break;
            
        default:
            if (kRow == 0) {
                return self.tuCaoCell;
            }
            return self.settingCell;
            break;
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.section) {
        case 0:
            //跳转
            break;
            
        default:
            break;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath   {
    if (indexPath.section == 0) return 95;
    return 44;
}



@end
