//
//  WUCSingleSelectView.m
//  WorlducProject
//
//  Created by mac on 16/8/19.
//  Copyright © 2016年 worlduc. All rights reserved.
//

#import "WUCSingleSelectView.h"
#import "Masonry.h"
//颜色
#define MCColor(r, g, b ,alp) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:alp]

@interface WUCSingleSelectView()

@property(nonatomic,assign)BOOL isSelected;

@end
@implementation WUCSingleSelectView
- (instancetype)init{ //尽量用 instancetype
    if (self = [super init]) {
        [self createSubViews];
    }
    return self;
}

- (void)createSubViews{
    UILabel *leftLabel = [UILabel new];
    UILabel *rightLabel = [UILabel new];
    
    rightLabel.numberOfLines = 0;
    
    [self addSubview:leftLabel];
    [self addSubview:rightLabel];
    
    leftLabel.textAlignment = NSTextAlignmentCenter;
    leftLabel.font = [UIFont systemFontOfSize:16];
    
    rightLabel.textAlignment = NSTextAlignmentLeft;
    rightLabel.textColor = MCColor(90, 90, 90, 1);
    rightLabel.font = [UIFont systemFontOfSize:16];
    
    self.layer.borderColor =MCColor(243, 243, 243, 1).CGColor;
    self.layer.borderWidth = .5;
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 5;
    
    __weak WUCSingleSelectView *ws = self;
    [leftLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(rightLabel.mas_top);
        make.left.equalTo(ws.mas_left).offset(5);
        make.width.equalTo(@25);//这里的25 你要做一下适配
        make.bottom.equalTo(rightLabel.mas_bottom);
    }];
    [rightLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.mas_top);
        make.left.equalTo(leftLabel.mas_right).offset(15);
        make.right.equalTo(ws.mas_right).offset(-5);
        make.bottom.equalTo(ws.mas_bottom);
    }];
    
    leftLabel.tag = 200;
    rightLabel.tag = 201;
    
    
}
- (void)setLeftString:(NSString *)leftString withRightString:(NSString *)rightString withIsSelected:(BOOL)isSelected{
    
    UILabel *leftLabel = [self viewWithTag:200];
    UILabel *rightLabel = [self viewWithTag:201];
    
    leftLabel.text = leftString;
    rightLabel.text = rightString;
    
    rightLabel.textColor = MCColor(90, 90, 90, 1);
    _isSelected = isSelected;
    if(_isSelected){
        [self didClickView];
    }else{
        [self notDidClickView];
    }
}

/*!
 *  点击view
 */
-(void)didClickView{
    UILabel *leftLabel = [self viewWithTag:200];
    leftLabel.backgroundColor =  MCColor(0, 151, 255, 1);
    leftLabel.textColor =[UIColor whiteColor];
    self.layer.borderColor =  MCColor(0, 151, 255, 1).CGColor;
}
/*!
 *  没有点击View
 */
-(void)notDidClickView {
    UILabel *leftLabel = [self viewWithTag:200];
    leftLabel.backgroundColor = MCColor(243, 243, 243, 1);
    leftLabel.textColor = MCColor(0, 151, 255, 1);
    self.layer.borderColor =MCColor(243, 243, 243, 1).CGColor;
}

/*!
 *  点击View
 *
 *  @param touches <#touches description#>
 *  @param event   <#event description#>
 */
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //[self didClickView];
    _isSelected = !_isSelected;
    if(_isSelected){
        [self didClickView];
    }else{
        [self notDidClickView];
    }

    [super touchesBegan:touches withEvent:event];
    
}



@end
