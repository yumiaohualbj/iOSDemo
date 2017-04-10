//
//  masnoryDemoCell.m
//  masonry使用demo
//
//  Created by mac on 16/9/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "masnoryDemoCell.h"
#import "WUCSingleSelectView.h"
#import "Masonry/Masonry.h"
@interface masnoryDemoCell ()
//@property (nonatomic,strong);
@property (nonatomic,strong)WUCSingleSelectView * singleView1;
@property (nonatomic,strong)WUCSingleSelectView * singleView2;
@property (nonatomic,strong)WUCSingleSelectView * singleView3;
@property (nonatomic,strong)WUCSingleSelectView * singleView4;

@end
@implementation masnoryDemoCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self =[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createSubViews];
    }
    
    return self;
}


- (void)createSubViews{
    
    
    UILabel *questionLabel = [UILabel new];
    questionLabel.tag = 100;
//    _singleView1 = [WUCSingleSelectView new];
//    _singleView2 = [WUCSingleSelectView new];
//    _singleView3 = [WUCSingleSelectView new];
//    _singleView4 = [WUCSingleSelectView new];
    
    [self.contentView addSubview:questionLabel];
//    [self.contentView addSubview:_singleView1];
//    [self.contentView addSubview:_singleView2];
//    [self.contentView addSubview:_singleView3];
//    [self.contentView addSubview:_singleView4];
//    
    __weak masnoryDemoCell * weakSelf = self;
    [questionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.contentView.mas_top).offset(15);
        make.left.equalTo(weakSelf.contentView.mas_left).offset(14);
        make.right.equalTo(weakSelf.contentView.mas_right).offset(-14);;
//        make.bottom.equalTo(w.mas_top).offset(-15);
        
    }];
    
    
    WUCSingleSelectView *w = [WUCSingleSelectView new];
    [self.contentView addSubview:w];
    
    [w mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(@0);
        make.top.equalTo(questionLabel.mas_bottom).offset(15);
    }];
    
    [w setLeftString:@"A" withRightString:@"c程序在运行的过程中所有计算机都以二进制方式进行所有c程序都需要编译链接无误后才能运行" withIsSelected:NO];
    
    WUCSingleSelectView *w1 = [WUCSingleSelectView new];
    [self.contentView addSubview:w1];
    
    [w1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(@0);
        make.top.equalTo(w.mas_bottom).offset(10);
    }];
    
    [w1 setLeftString:@"B" withRightString:@"c程序都需要编译链接无误后才能运行" withIsSelected:NO];
    
    
    
    WUCSingleSelectView *w2 = [WUCSingleSelectView new];
    [self.contentView addSubview:w2];
    [w2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(@0);
        make.top.equalTo(w1.mas_bottom).offset(10);
    }];
    [w2 setLeftString:@"C" withRightString:@"c程序在运行的过程中所有计算机都以二进制方式进行假假按揭" withIsSelected:NO];
    
    
    WUCSingleSelectView *w3 = [WUCSingleSelectView new];
    [self.contentView  addSubview:w3];
    [w3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(@0);
        make.top.equalTo(w2.mas_bottom).offset(10);
    }];
    
    [w3 setLeftString:@"D" withRightString:@"c程序中整型变量只能存放整数，实型变量只能存放浮点型数据" withIsSelected:NO];
    

}

- (void)setModel:(cellModel *)model{
    
    _model = model;
    UILabel *questionLabel = [self viewWithTag:100];
    

    questionLabel.text = model.desStr;
    NSArray * options = model.options;
//    [_singleView1 setLeftString:@"A" withRightString:options[0] withIsSelected:NO];
//    [_singleView1 setLeftString:@"B" withRightString:options[1] withIsSelected:NO];
//    [_singleView1 setLeftString:@"C" withRightString:options[2] withIsSelected:NO];
//    [_singleView1 setLeftString:@"D" withRightString:options[3] withIsSelected:NO];

}


//- (CGFloat)cellHeighWithModel:(cellModel *)model{
//    
//    CGFloat cellHeight = 0;
//    
//    CGSize labelSize = [_questionLabel sizeThatFits:[self sizeToFit]];
//    
//}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
