//
//  WSZPhtoListObject.h
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WSZPhtoListObject : NSObject
- (instancetype)init __attribute__((unavailable("请使用initWithHostView:")));;
+ (instancetype)new __attribute__((unavailable("请使用initWithHostView:")));;

@property (nonatomic,strong)UIView *hostView;

- (instancetype)initWithHostView:(UIView *)hostView;

@end

NS_ASSUME_NONNULL_END
