//
//  WSZNetworkManager.m
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import "WSZNetworkManager.h"
#import <AFNetworking/AFNetworking.h>

@implementation WSZNetworkManager
- (void)get:(NSString *)requestStr successBlock:(NetworkCallBack)success failBlock:(NetworkCallBack)failed{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:requestStr parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {

    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        WSZNetworkResponseObject *object = [WSZNetworkResponseObject new];
        object.data = responseObject;
        object.status = YES;
        success(object);
        NSLog(@"%@",responseObject);

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        WSZNetworkResponseObject *object = [WSZNetworkResponseObject new];
        object.error = error;
        object.status = NO;
        success(object);
    }];
}
@end
