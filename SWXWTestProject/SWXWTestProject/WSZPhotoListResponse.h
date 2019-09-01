//
//  WSZPhotoListResponse.h
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import "WSZBaseResponse.h"
#import "WSZPhotoModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface WSZPhotoListResponse : WSZBaseResponse
@property (nonatomic,strong)WSZPhotoModel *model;
@end

NS_ASSUME_NONNULL_END
