//
//  WSZNetworkUtility.h
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#ifndef WSZNetworkUtility_h
#define WSZNetworkUtility_h

typedef NS_ENUM(NSUInteger, WSZNetBaseRequestStatus) {
    WSZNetBaseRequestStatusWillStart, // 即将开始
    WSZNetBaseRequestStatusLoading,   // 加载中
    WSZNetBaseRequestStatusSuccess,   // 请求成功
    WSZNetBaseRequestStatusFail,      // 请求失败：网络失败
    WSZNetBaseRequestStatusCache,     // 缓存
    WSZNetBaseRequestStatusCancelled  // 取消
};

typedef void (^WSZNetWorkBlock)(NSURLSessionDataTask *task, WSZNetBaseRequestStatus status, id data, NSNumber *returnCode);
#endif /* WSZNetworkUtility_h */
