//
//  FormTableView.h
//  原理：
//      1，偶数行，显示边框，隐藏左右线。
//      2，奇数行，隐藏边框，显示左右线。
//
//  Created by 韩军强 on 2017/11/21.
//  Copyright © 2017年 韩军强. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FormTableView : UITableView

/**
     数据源
 */
@property (nonatomic, strong) NSMutableArray *dataArr;

/**
     线条宽度
 */
@property (nonatomic, assign) CGFloat jq_lineWidth;

/**
     线条颜色
 */
@property (nonatomic, strong) UIColor *jq_lineColor;

/**
     整个表格的高度
 */
@property (nonatomic, assign) CGFloat jq_tableHeight;

@end
