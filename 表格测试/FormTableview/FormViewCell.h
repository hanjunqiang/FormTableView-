//
//  FormViewCell.h
//  表格测试
//
//  Created by 韩军强 on 2017/11/21.
//  Copyright © 2017年 韩军强. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FormModel.h"
@interface FormViewCell : UITableViewCell

//文字
@property (weak, nonatomic) IBOutlet UILabel *jq_lbl1;
@property (weak, nonatomic) IBOutlet UILabel *jq_lbl2;
@property (weak, nonatomic) IBOutlet UILabel *jq_lbl3;

//新增的线（label）
@property (weak, nonatomic) IBOutlet UILabel *jq_leftLine1;
@property (weak, nonatomic) IBOutlet UILabel *jq_rightLine1;
@property (weak, nonatomic) IBOutlet UILabel *jq_bottomLine1;
@property (weak, nonatomic) IBOutlet UILabel *jq_middleLine1;
@property (weak, nonatomic) IBOutlet UILabel *jq_middleLine2;


//新增线的宽度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *jq_leftWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *jq_rightWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *jq_bottomHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *jq_middle1Width;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *jq_middle2Width;

//赋值model
@property (nonatomic, strong) FormModel *model;


/**
 参数解释

 @param indexPath 当前NSIndexPath
 @param lineWidth 线宽
 @param lineColor 线颜色
 @param maxRow 数据源总数量
 */
- (void)jq_setCellProperty:(NSIndexPath *)indexPath lineWidth:(CGFloat)lineWidth lineColor:(UIColor *)lineColor maxRow:(NSInteger)maxRow;

@end
