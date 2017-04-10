//
//  ViewController.m
//  ShareDemo
//
//  Created by mac on 16/5/4.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"

//#import "UMSocialLoginViewController.h"
//#import "UMSocialBarViewController.h"
#import "AppDelegate.h"
#import "UMSocialEditDemoViewController.h"
#import "UMSocialSnsPlatformManager.h"
#import "UMSocial.h"

#import "UMSocialControllerService.h"
#import <AFNetworking.h>

#define kTagShareEdit 101
#define kTagSharePost 102
#define access_token @"2.00CP7KYFApOLlCbb0bdb616c_msqcD"
#define client_secret @"e7710ec4af7cfcb6b8416753a1204734"
#define sinaappkey @"2529432042"
#import "UMSocialSinaSSOHandler.h"
@interface ViewController ()<UIActionSheetDelegate,UMSocialUIDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [UMSocialSinaSSOHandler openNewSinaSSOWithAppKey:sinaappkey secret:client_secret RedirectURL:@"http://www.baidu.com"];
    [self.view setBackgroundColor:[UIColor grayColor]];
           UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"分享" forState:UIControlStateNormal];
    btn.frame = CGRectMake(30, 50, 100, 50);
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)btnClick:(UIButton *)btn{
    
    NSString *shareText = @"友盟社会化组件可以让移动应用快速具备社会化分享、登录、评论、喜欢等功能，并提供实时、全面的社会化数据统计分析服务。 http://www.umeng.com/social";             //分享内嵌文字
    //    UIImage *shareImage = [UIImage imageNamed:@"UMS_social_demo"];          //分享内嵌图片
    UIImage *shareImage = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"UMS_social_demo" ofType:@"png"]];
    //调用快速分享接口
    [UMSocialSnsService presentSnsIconSheetView:self
                                         appKey:@"5704644fe0f55a13c30021aa"
                                      shareText:shareText
                                     shareImage:shareImage
                                shareToSnsNames:@[UMShareToSina]
                                       delegate:self];


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
