//
//  GuanZhuTableViewController.m
//  MiaoPai
//
//  Created by tarena001 on 16/11/23.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "GuanZhuTableViewController.h"
#import "GuanZhuCell.h"
#import "GuanZhuHeadCell.h"
@interface GuanZhuTableViewController ()
@property (nonatomic) NSArray<GuanZhuResultListModel *> *dataList;
@end

@implementation GuanZhuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 50;
    [self.tableView registerClass:[GuanZhuCell class] forCellReuseIdentifier:@"GuanZhuCell"];
    [self.tableView registerClass:[GuanZhuHeadCell class] forCellReuseIdentifier:@"GuanZhuHeadCell"];
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [FindNetManager getGuanZhuWithCompletionHandle:^(GuanZhuModel *model, NSError *error) {
            [self.tableView.mj_header endRefreshing];
            if (!error) {
                self.dataList = model.result.list;
                [self.tableView reloadData];
            }
        }];
    }];
    [self.tableView.mj_header beginRefreshing];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) return 2;
    return self.dataList.count;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 50)];
    if (section == 0){
//        label.text = @"你认识的人";
    }
    if (section == 1) {
//       label.text = @"你可能感兴趣的人";
    }
    return label;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        GuanZhuHeadCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GuanZhuHeadCell" forIndexPath:indexPath];
        if (indexPath.row == 0) {
            cell.image.image = [UIImage imageNamed:@"MPTFriendWeibo"];
            cell.titleLb.text = @"新浪微博";
        }else{
            cell.image.image = [UIImage imageNamed:@"MPTFriendMobile"];
            cell.titleLb.text = @"手机通讯录";
        }
        cell.separatorInset = UIEdgeInsetsZero;
        return cell;
    }
    GuanZhuCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GuanZhuCell" forIndexPath:indexPath];
    GuanZhuResultListModel *model = self.dataList[indexPath.row];
    if (model.weiboInfo) {
        [cell.iconIV setImageURL:model.icon.mp_URL];
        cell.nameLb.text = model.weiboInfo.nick;
        cell.titleLb.text = model.weiboInfo.vReason;
    }else{
        [cell.iconIV setImageURL:model.icon.mp_URL];
        cell.nameLb.text = model.nick;
        cell.titleLb.text = model.talent_name;
    }
    cell.separatorInset = UIEdgeInsetsZero;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
