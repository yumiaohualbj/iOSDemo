//
//  WUCSingleSelectView.h
//  WorlducProject
//
//  Created by mac on 16/8/19.
//  Copyright © 2016年 worlduc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WUCSingleSelectView : UIView
/*!
 *  设置view的点击
 *
 *  @param leftString  A B C D 选项
 *  @param rightString 选项内容
 *  @param isSelected  是否是选中状态
 */
- (void)setLeftString:(NSString *)leftString withRightString:(NSString *)rightString withIsSelected:(BOOL)isSelected;

/*!
 *  点击view
 */
-(void)didClickView;

/*!
 *  没有点击View
 */
-(void)notDidClickView;


@end
