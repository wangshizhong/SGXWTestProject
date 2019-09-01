//
//  WSZBaseRequestConfigProtocl.h
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol WSZBaseRequestConfigProtocol <NSObject>


@optional
- (NSString *)requestHostUrl;
- (NSString *)contentType;
- (NSDictionary *)param;
- (id)responseClass;
@end
NS_ASSUME_NONNULL_END
