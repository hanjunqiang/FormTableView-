//
//  FormTableView.m
//  表格测试
//
//  Created by 韩军强 on 2017/11/21.
//  Copyright © 2017年 韩军强. All rights reserved.
//

#import "FormTableView.h"
#import "FormViewCell.h"
#import "FormModel.h"
@interface FormTableView()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation FormTableView

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

static  NSString* const  FormViewCellID = @"FormViewCellID";

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.delegate = self;
        self.dataSource = self;
        
        self.showsVerticalScrollIndicator = NO;
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        
        self.estimatedRowHeight = 60;
        self.rowHeight = UITableViewAutomaticDimension;
        
        [self registerNib:[UINib nibWithNibName:@"FormViewCell" bundle:nil] forCellReuseIdentifier:FormViewCellID];
        
    }
    return self;
}


-(NSMutableArray *)dataArr{
    if (_dataArr == nil) {
        _dataArr = [NSMutableArray array];
    }
    return _dataArr;
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    FormViewCell *cell = [tableView dequeueReusableCellWithIdentifier:FormViewCellID];

    FormModel *model = self.dataArr[indexPath.row];
    cell.model = model;
    
    [cell jq_setCellProperty:indexPath lineWidth:self.jq_lineWidth lineColor:self.jq_lineColor maxRow:self.dataArr.count];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

#pragma Mrhan- 整个表格的高度
-(CGFloat)jq_tableHeight{
    [self layoutIfNeeded];
    
    if ( ((self.dataArr.count-1)%2 == 0) ) {
        return self.contentSize.height;
    }else{
        return self.contentSize.height+1; //奇数行，底部多了一条线，有1的误差
    }
}

@end
