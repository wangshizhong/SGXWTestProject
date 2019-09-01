//
//  WSZPhotoCell.h
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ReloadIndexPathBlock)(void);

@protocol WSZViewModelProtocol <NSObject>

- (NSString *_Nullable)title;
- (NSString *_Nullable)imgUrl;

@end

NS_ASSUME_NONNULL_BEGIN

@interface WSZPhotoCell : UITableViewCell
@property (nonatomic,strong)UILabel *userNLab;  /*用户名 */
@property (nonatomic,strong)UIImageView *imageV;/*图片 */

@property (nonatomic,strong) id<WSZViewModelProtocol> proxy;

@property (nonatomic,copy) ReloadIndexPathBlock reloadBlock;


@end

NS_ASSUME_NONNULL_END
