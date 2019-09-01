//
//  WSZProxy.m
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import "WSZProxy.h"

@implementation WSZProxy{
    id _object;
}
- (void)injectObject:(id)object{
    _object = object;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    if ([_object respondsToSelector:sel]) {
        return [_object methodSignatureForSelector:sel];
    }

    return [super methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
    if ([_object respondsToSelector:invocation.selector]) {
        [invocation invokeWithTarget:_object];
        return;
    }
    [super forwardInvocation:invocation];
}

@end
