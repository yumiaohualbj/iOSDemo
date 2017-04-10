//
//  ViewController.m
//  mask自动布局demo
//
//  Created by mac on 16/5/27.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    UIView * redView = [[UIView alloc]init];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    //居中显示
//    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerX.equalTo(self.view);
//        make.centerY.equalTo(self.view);
//        make.height.equalTo(@100);
//        make.width.equalTo(@200);
//        
//    }];
    
    //并排位于底部 间距20
    
    UIView * greenView = [[UIView alloc]init];
    greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:greenView];
    
    
    UIView * blueView = [[UIView alloc]init];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
//    //添加约束
//    [greenView mas_makeConstraints:^(MASConstraintMaker *make) {
//        
//      
//        make.left.equalTo(self.view).offset(20);   //左边间距20
//        make.right.equalTo(blueView).offset(-20); //右边和blueView间距20
//        make.bottom.equalTo(self.view).offset(-20); //和底部间距20
//        make.height.equalTo(@200);  //高度200
//      
//        
//    
//    }];
//    
//    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
//        //右边间距20
//        
//        make.right.equalTo(self.view).mas_offset(-20);
//        make.bottom.equalTo(self.view).offset(-20);
//        make.height.equalTo(greenView);
//        make.width.equalTo(greenView);
//        
//    }];
    
    
    
    //四个view 平分整个屏幕
    
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
