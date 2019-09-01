//
//  WSZBaseCommonInfo.h
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WSZBaseCommonInfo : NSObject

/**
  访问权限key

 @return key
 */
+ (NSString *)accessKey;


/**
 秘钥

 @return key
 */
+ (NSString *)secretKey;
/**
 其他配置
 */
@end

NS_ASSUME_NONNULL_END
