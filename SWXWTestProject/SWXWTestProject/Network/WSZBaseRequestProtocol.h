//
//  WSZBaseRequestProtocal.h
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WSZBaseResponse.h"
#import "WSZBaseResponseError.h"
NS_ASSUME_NONNULL_BEGIN

@protocol WSZBaseRequestProtocol <NSObject>
- (void)startRequestWithComplete:(void (^)(WSZBaseResponse *response, WSZBaseResponseError *error))complete;

- (NSDictionary *)requestParam;
- (NSMutableURLRequest *)URLRequest;
@end

NS_ASSUME_NONNULL_END
