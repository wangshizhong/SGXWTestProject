//
//  WSZPhotoCell.m
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import "WSZPhotoCell.h"
#import  <Masonry.h>
#import <SDWebImage/SDWebImage.h>

#define SWIDTH   [UIScreen mainScreen].bounds.size.width

@implementation WSZPhotoCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self configUI];
    }
    return self;
}


/**
 重置setProxy

 @param proxy WSZViewModelProtocol
 */
- (void)setProxy:(id<WSZViewModelProtocol>)proxy{
    _proxy = proxy;
    self.userNLab.text = [proxy title];

    __weak typeof(self) weakSelf = self;
    [self.imageV sd_setImageWithURL:[NSURL URLWithString:[proxy imgUrl]] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        @autoreleasepool {
            CGFloat contentWidth = SWIDTH - 40;
            CGFloat imageWidth = image.size.width;
            CGFloat imageHeight = image.size.height;
            CGFloat contentHeight = (contentWidth*imageHeight) / imageWidth;


            [self.imageV mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self).offset(20);
                make.right.equalTo(self).offset(-20);
                make.top.equalTo(self.userNLab.mas_bottom).offset(0);
                make.height.mas_equalTo(contentHeight);
                make.bottom.equalTo(self.mas_bottom).offset(1);
            }];
            // 更新当前IndexPath cell
            if(self->_reloadBlock){
                weakSelf.reloadBlock();
            }
        }
    }];
}


/**
 配置UI
 */
- (void)configUI{

    [self addSubview:self.userNLab];
    [self addSubview:self.imageV];
    [self.userNLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.mas_equalTo(self).offset(20);
        make.right.mas_equalTo(self).offset(-20);
        make.height.mas_equalTo(24);
    }];
}

-(UILabel *)userNLab{
    if(_userNLab){
        return _userNLab;
    }
    _userNLab = [[UILabel alloc]init];
    _userNLab.textColor = [UIColor blackColor];
    _userNLab.font = [UIFont systemFontOfSize:14];
    return _userNLab;
}

- (UIImageView *)imageV{
    if(_imageV){
        return _imageV;
    }
    _imageV = [[UIImageView alloc]init];
    _imageV.layer.cornerRadius = 10.f;
    _imageV.layer.masksToBounds = YES;
    return _imageV;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end
