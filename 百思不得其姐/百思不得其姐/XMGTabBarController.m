//
//  XMGTabBarController.m
//  百思不得其姐
//
//  Created by 冯庄玥 on 16/2/29.
//  Copyright © 2016年 冯庄玥. All rights reserved.
//

#import "XMGTabBarController.h"
#import "XMGEssenceViewController.h"
#import "XMGFriendTrendsViewController.h"
#import "XMGMeViewController.h"
#import "XMGNewViewController.h"
#import "XMGTabBar.h"

@interface XMGTabBarController ()

@end

@implementation XMGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //    设置未选中字体颜色
    NSMutableDictionary *attrs=[NSMutableDictionary dictionary];
    attrs[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName]=[UIColor lightGrayColor];
    
    //    设置选中字体颜色
    NSMutableDictionary *selectedAttrs=[NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    selectedAttrs[NSForegroundColorAttributeName]=[UIColor darkGrayColor];
    
    UITabBarItem *item=[UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    //    添加子控制器（4大模块）
    [self setupChildVc:[[XMGEssenceViewController alloc]init] title:@"精华" image:@"tabBar_essence_icon" selectedImg:@"tabBar_essence_click_icon"];
    [self setupChildVc:[[XMGNewViewController alloc]init] title:@"新帖" image:@"tabBar_new_icon" selectedImg:@"tabBar_new_click_icon"];
    [self setupChildVc:[[XMGFriendTrendsViewController alloc]init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImg:@"tabBar_friendTrends_click_icon"];
    [self setupChildVc:[[XMGMeViewController alloc]init] title:@"我" image:@"tabBar_me_icon" selectedImg:@"tabBar_me_click_icon"];
//    更换自定义的tabBar
    [self setValue:[[XMGTabBar alloc]init] forKey:@"tabBar"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//初始化自控制器
-(void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImg:(NSString *)selectedImg
{
    vc.tabBarItem.title=title;
    vc.tabBarItem.image=[UIImage imageNamed:image];
    vc.tabBarItem.selectedImage=[UIImage imageNamed:selectedImg];
    vc.view.backgroundColor=[UIColor colorWithRed:arc4random_uniform(100)/100.0 green:arc4random_uniform(100)/100.0 blue:arc4random_uniform(100)/100.0 alpha:1.0];
    [self addChildViewController:vc];
}

@end
