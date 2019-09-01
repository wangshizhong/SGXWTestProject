//
//  WSZNetworkManager.h
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WSZNetworkResponseObject.h"
typedef void(^NetworkCallBack)(WSZNetworkResponseObject * _Nullable object);


NS_ASSUME_NONNULL_BEGIN

@interface WSZNetworkManager : NSObject

- (void)get:(NSString *)requestStr successBlock:(NetworkCallBack)success failBlock:(NetworkCallBack)failed;

@end

NS_ASSUME_NONNULL_END
