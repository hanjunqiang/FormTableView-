//
//  FormViewCell.m
//  表格测试
//
//  Created by 韩军强 on 2017/11/21.
//  Copyright © 2017年 韩军强. All rights reserved.
//

#import "FormViewCell.h"

@implementation FormViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}



-(void)setModel:(FormModel *)model
{
    _model = model;
    
    if (model.jq_title.length>4) {
        self.jq_lbl1.font = [UIFont systemFontOfSize:10];
    }else{
        self.jq_lbl1.font = [UIFont systemFontOfSize:14];
    }
    
    self.jq_lbl1.text = model.jq_title;
    self.jq_lbl2.text = model.jq_value1;
    self.jq_lbl3.text = model.jq_value2;
    
}

- (void)jq_setCellProperty:(NSIndexPath *)indexPath lineWidth:(CGFloat)lineWidth lineColor:(UIColor *)lineColor maxRow:(NSInteger)maxRow{
    
    CGFloat jq_lineWidth = lineWidth?lineWidth:1;
    UIColor *jq_lineColor = lineColor?lineColor:[UIColor blackColor];
    
    /**
        偶数行，显示边框，隐藏左右线。
        奇数行，隐藏边框，显示左右线。
    */
    if (indexPath.row%2==0) {
        
        self.contentView.layer.borderWidth = jq_lineWidth;
        self.contentView.layer.borderColor = jq_lineColor.CGColor;
        self.jq_leftLine1.hidden = YES;
        self.jq_rightLine1.hidden = YES;
        
        
    }else{
        self.contentView.layer.borderWidth = 0;
        self.contentView.layer.borderColor = [UIColor clearColor].CGColor;
        self.jq_leftLine1.hidden = NO;
        self.jq_rightLine1.hidden = NO;
    }
    
    //只有最后一行显示底部线
    if ( (indexPath.row == maxRow-1) && ( (maxRow-1)%2 != 0) ) {

        self.jq_bottomLine1.hidden = NO;
    }else{
        self.jq_bottomLine1.hidden = YES;
    }
    
    //线宽
    self.jq_leftWidth.constant = jq_lineWidth;
    self.jq_rightWidth.constant = jq_lineWidth;
    self.jq_bottomHeight.constant = jq_lineWidth;
    self.jq_middle1Width.constant = jq_lineWidth;
    self.jq_middle2Width.constant = jq_lineWidth;
    
    //线颜色
    self.jq_leftLine1.backgroundColor = jq_lineColor;
    self.jq_rightLine1.backgroundColor = jq_lineColor;
    self.jq_bottomLine1.backgroundColor = jq_lineColor;
    self.jq_middleLine1.backgroundColor = jq_lineColor;
    self.jq_middleLine2.backgroundColor = jq_lineColor;
    
    
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
