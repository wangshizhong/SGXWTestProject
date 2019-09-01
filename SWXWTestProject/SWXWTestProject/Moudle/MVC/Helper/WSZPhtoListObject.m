//
//  WSZPhtoListObject.m
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import "WSZPhtoListObject.h"
#import "WSZNetworkManager.h"
#import "WSZPhotoCell.h"
#import "MJExtension.h"
#import "WSZPhotoModel.h"
#import "WSZProxy.h"
#import "WSZPhotolistRequest.h"
#import <YYModel/YYModel.h>

@interface WSZPhtoListObject ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UITableView *tableView;
@property (nonatomic,strong)NSMutableArray *dataSource; /*数据源 */

@end

@implementation WSZPhtoListObject

- (instancetype)initWithHostView:(UIView *)hostView{

    if(self = [super init]){
        _hostView =  hostView;
        [_hostView addSubview:self.tableView];
        _dataSource = [NSMutableArray array];
        [self loadPhtoto];
    }
    return self;
}

#pragma mark tableViewDataSource
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *indefir = @"cell";
    WSZPhotoCell *photoCell = [[WSZPhotoCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indefir];
    if(!photoCell){
        photoCell = [tableView dequeueReusableCellWithIdentifier:indefir forIndexPath:indexPath];
    }
    
    WSZPhotoModel *aModel = self.dataSource[indexPath.row];
    
    /*通过消息转发和delegate解耦Model和View */
    WSZProxy *proxy = [WSZProxy alloc];

    /*可以往injectObject传递不同的Model, 且实现WSZViewModelProtocol 协议即可*/
    [proxy injectObject:aModel];
    photoCell.proxy = (id)proxy;

    photoCell.reloadBlock = ^{
        [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    };
    return photoCell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}
#pragma NetWork
- (void)loadPhtoto{

    WSZPhotolistRequest *request = [[WSZPhotolistRequest alloc] init];
    [request startRequestWithComplete:^(WSZBaseResponse * _Nonnull response, WSZBaseResponseError * _Nonnull error) {
        NSLog(@"%@",response);
        NSLog(@"%@",error);
        NSArray *photolist = [NSArray yy_modelArrayWithClass:[WSZPhotoModel class] json:response.data];//[WSZPhotoModel yy_:response.data];
        [self.dataSource addObjectsFromArray:photolist];
        [self.tableView reloadData];
    }];
}


#pragma mark lazy method
- (UITableView *)tableView{
    if(_tableView){
        return _tableView;
    }
    _tableView = [[UITableView alloc]initWithFrame:self.hostView.bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;

    // 在设置 tableView 高度为自适应（UITableViewAutomaticDimension）
    // 要记得设置估算高度（estimatedRowHeight）才会发挥作用
    _tableView.rowHeight = UITableViewAutomaticDimension;
    _tableView.estimatedRowHeight = 200.f;
    _tableView.backgroundColor = [UIColor whiteColor];
    return _tableView;
}


@end
