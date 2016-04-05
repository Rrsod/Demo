//
//  tabBarController.m
//  Demo
//
//  Created by Youlala on 16-3-31.
//  Copyright (c) 2016年 Youlala. All rights reserved.
//

#import "tabBarController.h"
#import "OneController.h"
#import "TwoController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buildChildViewController:(UIViewController *)controller andNatitle:(NSString *)natitle andVCtatitle:(NSString *)VCtatitle{
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:controller];
    nav.title = natitle;
    controller.navigationItem.title = VCtatitle;
    [self addChildViewController:nav];
}



@end
