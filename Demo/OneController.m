//
//  OneController.m
//  Demo
//
//  Created by Youlala on 16-3-31.
//  Copyright (c) 2016年 Youlala. All rights reserved.
//

#import "OneController.h"
#import "TwoController.h"
#import "ThreeViewController.h"
@interface OneController ()
@property (strong, nonatomic) UIButton *btn;
@property (strong, nonatomic) UIButton *btn2;
@property (strong, nonatomic) TwoController *two;
@end

@implementation OneController

- (void)viewDidLoad {
    [super viewDidLoad];
    //_three = [ThreeViewController three];
    _two = [[TwoController alloc]init];
    self.view.backgroundColor = [UIColor yellowColor];
    _btn = [[UIButton alloc] initWithFrame:CGRectMake(375/2-45,667/2, 90, 50)];
    _btn.backgroundColor = [UIColor blueColor];
    [_btn setTitle:@"Click ME" forState:UIControlStateNormal];
    [_two changeFontWithBlock:^(UIFont *font,NSString *text) {
        if (font) {
        _btn.titleLabel.font = font;
            [_btn setTitle:text forState:UIControlStateNormal];
        }
    }];
    
    _btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [_btn addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)button:(id)sender{
    [self.navigationController pushViewController: _two animated:YES];
}

- (void)viewDidDisappear:(BOOL)animated{
    
   }

@end
