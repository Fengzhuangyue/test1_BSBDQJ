//
//  XMGTabBar.m
//  百思不得其姐
//
//  Created by 冯庄玥 on 16/3/2.
//  Copyright © 2016年 冯庄玥. All rights reserved.
//

#import "XMGTabBar.h"
@interface XMGTabBar()

@property(nonatomic,weak)UIButton *plusBtn;

@end
@implementation XMGTabBar

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame]) {
        UIButton *plusBtn=[UIButton buttonWithType:UIButtonTypeCustom];
        [plusBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [plusBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
        [self addSubview:plusBtn];
        self.plusBtn=plusBtn;
    }
    return self;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    
//    设置发布的按钮的frame
    self.plusBtn.frame=CGRectMake(0, 0, self.plusBtn.currentBackgroundImage.size.width, self.plusBtn.currentBackgroundImage.size.height);
    self.plusBtn.center=CGPointMake(self.width*0.5, self.height*0.5);

//        设置其他UITabbarButton的frame
        CGFloat buttonY=0;
        CGFloat buttonW=self.width/5;
        CGFloat buttonH=self.height;
        NSInteger index=0;
    for (UIView *button in self.subviews) {
        if (![button isKindOfClass:[UIControl class]]||button==self.plusBtn)continue;
//        计算按钮的x值
        CGFloat buttonX=buttonW*((index>1)?(index+1):index);
        button.frame=CGRectMake(buttonX, buttonY, buttonW, buttonH);
//        增加索引
        index++;
    }
    
    
}

@end
