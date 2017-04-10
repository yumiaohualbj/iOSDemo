//
//  ViewController.m
//  懒加载buttondemo
//
//  Created by mac on 2017/3/30.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong)UIButton * redBtn;



@end

@implementation ViewController


- (UIButton *)redBtn{
    
    if (_redBtn == nil) {
        _redBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_redBtn setTitle:@"测试" forState:UIControlStateNormal];
          [_redBtn setTitle:@"点击" forState:UIControlStateSelected];
        _redBtn.frame = CGRectMake(50, 50, 80, 50);
        _redBtn.backgroundColor = [UIColor redColor];
        _redBtn.showsTouchWhenHighlighted = YES;
        
        [_redBtn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _redBtn;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.redBtn];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)btnAction:(UIButton *)btn{
    
    NSLog(@"点击");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
