//
//  WSZPhotolistRequest.m
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import "WSZPhotolistRequest.h"
#import "WSZPhotoListResponse.h"

@implementation WSZPhotolistRequest
- (NSString *)requestHostUrl{
    return @"https://api.unsplash.com/photos?client_id=74a51d7b26dc7290ad076272a362d0964345414251b2a2dfc967ac81e5ef5c73&page=1&per_page=20";
}

- (id)responseClass{
    return [WSZPhotoListResponse class];
}

@end
