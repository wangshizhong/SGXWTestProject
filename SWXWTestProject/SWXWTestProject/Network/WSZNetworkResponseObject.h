//
//  WSZNetworkResponseObject.h
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WSZNetworkResponseObject : NSObject
@property (nonatomic,strong)id data;
@property (nonatomic,assign)BOOL status;

@property (nonatomic,strong)NSError *error;
//判断数据.....

@end

NS_ASSUME_NONNULL_END
