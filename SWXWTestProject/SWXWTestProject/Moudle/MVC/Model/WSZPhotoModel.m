//
//  WSZPhotoModel.m
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import "WSZPhotoModel.h"

@implementation WSZUrlsModel



@end


@implementation WSZUserModel



@end


@implementation WSZPhotoModel

- (NSString *)title{

    return self.user[@"username"];
}

- (NSString * _Nullable)imgUrl {
    return self.urls[@"small"];
}

@end
