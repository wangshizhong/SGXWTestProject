//
//  LNPhotoListViewController.m
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import "LNPhotoListViewController.h"
#import "WSZPhtoListObject.h"
#import "YYFPSLabel.h"

@interface LNPhotoListViewController ()
@property (nonatomic,strong)WSZPhtoListObject *photoList;

@property (nonatomic, strong) YYFPSLabel *fpsLabel;

@end

@implementation LNPhotoListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self photoList];
    self.view.backgroundColor = [UIColor whiteColor];

    [self testFPSLabel];

}

- (void)testFPSLabel {
    _fpsLabel = [YYFPSLabel new];
    _fpsLabel.frame = CGRectMake(200, 200, 50, 30);
    [_fpsLabel sizeToFit];
    [self.view addSubview:_fpsLabel];
}

- (WSZPhtoListObject *)photoList{
    if (_photoList) {
        return _photoList;
    }
    _photoList = [[WSZPhtoListObject alloc] initWithHostView:self.view];
    return _photoList;
}


@end
