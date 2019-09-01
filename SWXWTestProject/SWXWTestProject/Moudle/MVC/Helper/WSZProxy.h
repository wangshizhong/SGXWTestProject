//
//  WSZProxy.h
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WSZProxy : NSProxy
- (void)injectObject:(id)object;

@end

NS_ASSUME_NONNULL_END
