//
//  XMGTabBarController.m
//  百思不得其姐
//
//  Created by 冯庄玥 on 16/2/29.
//  Copyright © 2016年 冯庄玥. All rights reserved.
//

#import "XMGTabBarController.h"

@interface XMGTabBarController ()

@end

@implementation XMGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    添加子控制器
    
    UIViewController *vc01=[[UIViewController alloc]init];
    vc01.tabBarItem.title=@"精华";
    vc01.tabBarItem.image=[UIImage imageNamed:@"tabBar_essence_icon"];
    vc01.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_essence_click_icon"];
//    设置未选中字体颜色
    NSMutableDictionary *attrs=[NSMutableDictionary dictionary];
    attrs[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName]=[UIColor lightGrayColor];
    [vc01.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    
//    设置选中字体颜色
    NSMutableDictionary *selectedAttrs=[NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    selectedAttrs[NSForegroundColorAttributeName]=[UIColor darkGrayColor];
    [vc01.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
//    UIImage *image1=[UIImage imageNamed:@"tabBar_essence_click_icon"];
//    image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    vc01.tabBarItem.selectedImage=image1;
    vc01.view.backgroundColor=[UIColor redColor];
    [self addChildViewController:vc01];
    
    UIViewController *vc02=[[UIViewController alloc]init];
    vc02.tabBarItem.title=@"新帖";
    vc02.tabBarItem.image=[UIImage imageNamed:@"tabBar_new_icon"];
    vc02.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_new_click_icon"];
//    
//    UIImage *image2=[UIImage imageNamed:@"tabBar_new_click_icon"];
//    image2=[image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    vc02.tabBarItem.selectedImage=image2;
    
//    字体的设置
    [vc02.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [vc02.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    vc02.view.backgroundColor=[UIColor blueColor];
    [self addChildViewController:vc02];
    
    UIViewController *vc03=[[UIViewController alloc]init];
    vc03.tabBarItem.title=@"关注";
    vc03.tabBarItem.image=[UIImage imageNamed:@"tabBar_friendTrends_icon"];
    vc03.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    
//    UIImage *image3=[UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
//    image3=[image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    vc03.tabBarItem.selectedImage=image3;
   
    //    字体的设置
    [vc03.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [vc03.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    vc03.view.backgroundColor=[UIColor yellowColor];
    [self addChildViewController:vc03];
    
    UIViewController *vc04=[[UIViewController alloc]init];
    vc04.tabBarItem.title=@"我";
    vc04.tabBarItem.image=[UIImage imageNamed:@"tabBar_me_icon"];
    vc04.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_me_click_icon"];
//    
//    UIImage *image4=[UIImage imageNamed:@"tabBar_me_click_icon"];
//    image4=[image4 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    vc04.tabBarItem.selectedImage=image4;
    
    //    字体的设置
    [vc04.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [vc04.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    vc04.view.backgroundColor=[UIColor grayColor];
    [self addChildViewController:vc04];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

 In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     Get the new view controller using [segue destinationViewController].
     Pass the selected object to the new view controller.
}
*/

@end
