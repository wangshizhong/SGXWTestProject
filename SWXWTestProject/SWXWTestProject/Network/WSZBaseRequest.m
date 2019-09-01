//
//  WSZBaseRequest.m
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import "WSZBaseRequest.h"
#import "WSZBaseResponse.h"
#import "WSZBaseResponseError.h"
#import "WSZNetBaseRequestManager.h"
#import <AFNetworking/AFNetworking.h>
#import <MJExtension/MJExtension.h>

#import <YYModel.h>

@implementation WSZBaseRequest

- (NSString *)requestHostUrl{
    return @"";
}

- (NSDictionary *)param
{
    return @{};
}

- (id)responseClass
{
    return [WSZBaseResponse class];
}

- (NSString *)contentType
{
    return @"application/x-www-form-urlencoded";
}

- (NSDictionary *)requestParam
{
    NSMutableDictionary *param = [self param].mutableCopy;
    return param;
}

- (NSMutableURLRequest *)URLRequest
{
    NSMutableURLRequest *netRequest = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"POST" URLString:[self requestHostUrl] parameters:[self requestParam] error:nil];
    netRequest.timeoutInterval = 10.f;
    [netRequest setValue:[self contentType] forHTTPHeaderField:@"Content-Type"];
    return netRequest;
}

- (void)startRequestWithComplete:(void (^)(WSZBaseResponse *response, WSZBaseResponseError *))complete
{
    self.status = WSZNetBaseRequestStatusWillStart;
    __weak typeof(self) weakSelf = self;
    [WSZNetBaseRequestManager startRequest:self resultBlock:^(NSError *error, NSDictionary *responseData, enum WSZNetBaseRequestStatus status) {
        if (complete) {
            weakSelf.status = status;
            if (status == WSZNetBaseRequestStatusSuccess) {
                Class responseClass = [self responseClass];

                WSZBaseResponse *responseObject = [[responseClass alloc] init];
                responseObject.data = responseData;

                complete(responseObject,nil);
            } else {
                WSZBaseResponseError *requestError = [[WSZBaseResponseError alloc] init];
                requestError.error = error;
                requestError.status = status;
                complete(nil, requestError);
            }
        }
    }];
}

@end
