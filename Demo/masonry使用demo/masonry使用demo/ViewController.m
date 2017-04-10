//
//  ViewController.m
//  masonry使用demo
//
//  Created by mac on 16/9/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "masnoryDemoCell.h"
#import "cellModel.h"
#import "UITableView+FDTemplateLayoutCell.h"
#define WIDTH [[UIScreen mainScreen]bounds].size.width
#define HEIGHT [[UIScreen mainScreen]bounds].size.height
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UITableView * tableView;
@property (nonatomic,strong)NSMutableArray * dataArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.backgroundColor = [UIColor redColor];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    _tableView.fd_debugLogEnabled = YES;
    [_tableView registerClass:[masnoryDemoCell class] forCellReuseIdentifier:@"cell"];
    [self getData];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)getData{
    _dataArr = [NSMutableArray array];
    
    cellModel * model = [[cellModel alloc]init];
    
    model.desStr = @"以下错误的是";
    NSMutableArray * arr = [NSMutableArray array];
    [arr addObject:@"c程序在运行的过程中所有计算机都以二进制方式进行"];
    [arr addObject:@"c程序在运行的过程中所有计算机都以十进制进行"];
    [arr addObject:@"所有c程序都需要编译链接无误后才能运行"];
    [arr addObject:@"c程序中整型变量只能存放整数，实型变量只能存放浮点型数据"];
 
    model.options = arr;
    for (int i = 0; i < 10; i++) {
         [self.dataArr addObject:model];
    }
  
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    masnoryDemoCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[masnoryDemoCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    [self setupModelOfCell:cell AtIndexPath:indexPath];
    
    return cell;
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    return [self.tableView fd_heightForCellWithIdentifier:@"cell" cacheByIndexPath:indexPath configuration:^(id cell) {
//        
//        [self setupModelOfCell:cell AtIndexPath:indexPath];
//    }];
//    
    return 300;
}


//预加载cell内容 自适应高度必须实现
- (void)setupModelOfCell:(masnoryDemoCell *)cell AtIndexPath:(NSIndexPath *)indexPath{
    
    cell.model = self.dataArr[indexPath.row];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
