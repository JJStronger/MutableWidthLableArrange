//
//  MutableWidthArrangeView.h
//  不等宽Lable排列
//
//  Created by 贾海涛 on 2017/4/21.
//  Copyright © 2017年 贾二狗. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MutableWidthArrangeView : UIView
@property (nonatomic, strong) NSArray *stringArray;
@property (nonatomic, assign) CGFloat rowSpace;
@property (nonatomic, assign) CGFloat lineSpace;
@end
