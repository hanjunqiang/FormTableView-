//
//  ViewController.m
//  表格测试
//
//  Created by 韩军强 on 2017/11/21.
//  Copyright © 2017年 韩军强. All rights reserved.
//

#import "ViewController.h"
#import "FormTableView.h"
#import "FormModel.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *titlesArray;
@property (nonatomic, strong) NSMutableArray *valuesArray;
@property (nonatomic, strong) FormTableView *formTable;
@end

@implementation ViewController
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

- (void)viewDidLoad {
    [super viewDidLoad];

    FormTableView *formTable = [[FormTableView alloc] initWithFrame:CGRectMake(5, 20, SCREEN_WIDTH-10, 400)];
    self.formTable = formTable;
    formTable.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:formTable];
    
    self.titlesArray = [NSMutableArray arrayWithObjects:@"马克隆值级\n(平均值)",@"C1",@"B1",@"A",@"B2",@"C1",@"C2",@"最小值",@"最大值",@"长度整齐度\n(%)(平均值)", nil];
    self.valuesArray = [NSMutableArray arrayWithObjects:@"1",@"22222222222222",@"3333",@"444444444444444444444444444444444",@"5555",@"666666666666",@"77777",@"最小值",@"最大值",@"999999999", nil];

    
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i< 10; i++) {
        
        FormModel *model = [FormModel new];
        model.jq_title = self.titlesArray[i];
        model.jq_value1 = [@(arc4random()%70) stringValue];
        model.jq_value2 = self.valuesArray[i];
        
        [array addObject:model];
    }
    
    
    formTable.jq_lineWidth = 3; //线宽
    formTable.jq_lineColor = [UIColor redColor]; //线颜色
    
    formTable.dataArr = array; //模型数组
    [formTable reloadData]; //刷新数据
    
    //更新tableview高度
    formTable.frame = CGRectMake(5, 20, SCREEN_WIDTH-10, formTable.jq_tableHeight);
//    NSLog(@"test---%f",formTable.contentSize.height);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
