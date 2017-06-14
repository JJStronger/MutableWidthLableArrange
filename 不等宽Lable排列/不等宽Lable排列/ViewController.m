//
//  ViewController.m
//  不等宽Lable排列
//
//  Created by 贾海涛 on 2017/4/21.
//  Copyright © 2017年 贾二狗. All rights reserved.
//

#import "ViewController.h"
#import "MutableWidthArrangeView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MutableWidthArrangeView *v = [[MutableWidthArrangeView alloc]initWithFrame:CGRectMake(0, 0, 300, 200)];
    v.backgroundColor = [UIColor yellowColor];
    v.lineSpace = 30;
    v.rowSpace = 20;
    v.stringArray = @[@"haha",@"哈哈哈",@"妈妈",@"啊",@"啊啊啊啊啊",@"啊",@"妈妈",@"啊",@"aaaaaaaaaaaaaaaaa",@"aaa"];

    [self.view addSubview:v];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
