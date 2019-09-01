//
//  WSZBaseRequest.h
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WSZBaseRequestProtocol.h"
#import "WSZBaseRequestConfigProtocol.h"
#import "WSZNetworkUtility.h"
NS_ASSUME_NONNULL_BEGIN

@interface WSZBaseRequest : NSObject<WSZBaseRequestProtocol,WSZBaseRequestConfigProtocol>

@property (nonatomic,assign)WSZNetBaseRequestStatus status;
@end

NS_ASSUME_NONNULL_END
