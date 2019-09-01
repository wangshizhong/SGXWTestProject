//
//  WSZNetBaseRequestManager.m
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import "WSZNetBaseRequestManager.h"
#import <AFNetworking/AFNetworking.h>
@implementation WSZNetBaseRequestManager
+ (void)startRequest:(WSZBaseRequest *)request resultBlock:(void (^)(NSError *, NSDictionary *, WSZNetBaseRequestStatus))block{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:request.requestHostUrl parameters:request.param progress:^(NSProgress * _Nonnull downloadProgress) {

    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        block(nil,responseObject,WSZNetBaseRequestStatusSuccess);

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        block(error,nil,WSZNetBaseRequestStatusFail);

    }];
}
@end
