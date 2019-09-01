//
//  ViewController.m
//  SWXWTestProject
//
//  Created by 王士众 on 2019/9/1.
//  Copyright © 2019 wsz. All rights reserved.
//

#import "ViewController.h"
#import "WSZNetworkManager.h"
#import "LNPhotoListViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    LNPhotoListViewController *listVC = [[LNPhotoListViewController alloc]init];
    [self.navigationController pushViewController:listVC animated:YES];
    
}

@end
