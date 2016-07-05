//
//  ViewController.m
//  HCStringSize
//
//  Created by ZHC on 16/7/4.
//  Copyright © 2016年 ZHC. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+HCStringSize.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, 20, [UIScreen mainScreen].bounds.size.width - 20, 40)];
    
    label.backgroundColor = [UIColor greenColor];
    
    label.text = @"由于苹果审核政策需求，建议大家对未安装客户端平台进行隐藏，在设置QQ、微信AppID之后调用下面的方法，[UMSocialConfig hiddenNotInstallPlatforms:@[UMShareToQQ, UMShareToQzone, UMShareToWechatSession, UMShareToWechatTimeline]]; 这个接口只对默认分享面板平台有隐藏功能，自定义分享面板或登录按钮需要自己处理 友盟分享sdk5.2.1已经兼容ipv6，请大家升级sdk，避免无法通过APPstore审核";
    
    
    
    
    /* 一句代码自动换行，自动调整高度 */
    [label boundingRectWithSize:CGSizeMake(label.bounds.size.width, 0)];
    
    
    [self.view addSubview:label];
    
}

@end
