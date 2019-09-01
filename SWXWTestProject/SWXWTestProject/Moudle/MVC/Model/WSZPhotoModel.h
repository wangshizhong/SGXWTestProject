//
//  WSZPhotoModel.h
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MJExtension/MJExtension.h>
#import "WSZPhotoCell.h"
NS_ASSUME_NONNULL_BEGIN

/**
 url
 */
@interface WSZUrlsModel:NSObject
@property (nonatomic,strong)NSString* raw;     /*原始 */
@property (nonatomic,strong)NSString* full;    /*充满 */
@property (nonatomic,strong)NSString* regular; /*常规 */
@property (nonatomic,strong)NSString* small;   /*较小 */
@end

/**
 用户
 */
@interface WSZUserModel:NSObject
@property (nonatomic,strong)NSString* username;         /*用户名 */
@property (nonatomic,strong)NSString* name;             /*真实名字 */
@property (nonatomic,strong)NSString* first_name;       /*名 */
@property (nonatomic,strong)NSString* last_name;        /*姓 */
@property (nonatomic,strong)NSString* twitter_username; /*twitter */

@end


/**
 Photo
 */
@interface WSZPhotoModel : NSObject <WSZViewModelProtocol>
@property (nonatomic,copy)NSString *color;
@property (nonatomic,strong)NSDictionary *urls;
@property (nonatomic,strong)NSDictionary *user;
@end

NS_ASSUME_NONNULL_END
