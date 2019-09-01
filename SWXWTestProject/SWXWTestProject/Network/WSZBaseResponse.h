//
//  WSZBaseResponseStatus.h
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface WSZNetBaseResponseStatus : NSObject

@property (nonatomic, strong) NSNumber *code;          // 返回代码
@property (nonatomic, strong) NSString *des;           // 返回描述
@property (nonatomic, strong) NSString *info;          // 返回信息

@end

NS_ASSUME_NONNULL_BEGIN

@interface WSZBaseResponse : NSObject
@property (nonatomic,strong)WSZNetBaseResponseStatus * _Nullable bstatus;
@property (nonatomic,strong)NSArray *data;

@end
NS_ASSUME_NONNULL_END

