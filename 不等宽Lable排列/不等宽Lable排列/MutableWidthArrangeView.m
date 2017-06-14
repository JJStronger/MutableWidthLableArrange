//
//  MutableWidthArrangeView.m
//  不等宽Lable排列
//
//  Created by 贾海涛 on 2017/4/21.
//  Copyright © 2017年 贾二狗. All rights reserved.
//

#import "MutableWidthArrangeView.h"

@interface MutableWidthArrangeView()
// 当前最大x坐标
@property (nonatomic, assign) CGFloat currentMaxX;
// 当前最大y坐标
@property (nonatomic, assign) CGFloat currentMaxY;
@end

@implementation MutableWidthArrangeView


- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]){
        [self set];
    }
    return self;
}
- (void)set{
    // 左右间距
    if(!_rowSpace){
        _rowSpace = 10;
        
    }
    // 上下间距
    if(!_lineSpace){
        _lineSpace = 30;
    }
}
- (void)setStringArray:(NSArray *)stringArray{
    _stringArray = stringArray;
    
    self.currentMaxX = self.rowSpace;
    self.currentMaxY = self.lineSpace;
    
    for(int i = 0;i < stringArray.count;i++){
        UILabel *l = [[UILabel alloc]init];
        l.text = stringArray[i];
        l.backgroundColor = [UIColor redColor];
        [l sizeToFit];
        // 判断这一行剩下的距离够不够放下下一个lable
        if ((self.frame.size.width - self.currentMaxX - self.rowSpace)<l.frame.size.width){
            self.currentMaxX = self.rowSpace;
            self.currentMaxY = self.currentMaxY + self.lineSpace;
            l.frame = CGRectMake(self.currentMaxX, self.currentMaxY, l.frame.size.width, l.frame.size.height);
            
        }else{
            l.frame = CGRectMake(self.currentMaxX, self.currentMaxY, l.frame.size.width, l.frame.size.height);
        }
        [self addSubview:l];
        self.currentMaxX = CGRectGetMaxX(l.frame) + self.rowSpace;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
