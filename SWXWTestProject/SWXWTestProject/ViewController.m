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
    
}

- (IBAction)clickAction:(id)sender {
    
    LNPhotoListViewController *listVC = [[LNPhotoListViewController alloc]init];
    [self.navigationController pushViewController:listVC animated:YES];
    
}


@end
