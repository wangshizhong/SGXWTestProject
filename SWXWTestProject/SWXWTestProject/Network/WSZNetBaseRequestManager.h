//
//  WSZNetBaseRequestManager.h
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WSZBaseRequest.h"
NS_ASSUME_NONNULL_BEGIN

@interface WSZNetBaseRequestManager : NSObject
+ (void)startRequest:(WSZBaseRequest *)request resultBlock:(void (^)(NSError *, NSDictionary *, WSZNetBaseRequestStatus))block;
@end

NS_ASSUME_NONNULL_END
