//
//  ViewController.m
//  测试内存
//
//  Created by mac on 2017/5/4.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    for (int i = 0; i<INT_MAX; i++) {
        @autoreleasepool {
            UIImage * image = [[UIImage alloc]init];
        }
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
