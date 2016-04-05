//
//  TwoController.m
//  Demo
//
//  Created by Youlala on 16-3-31.
//  Copyright (c) 2016年 Youlala. All rights reserved.
//

#import "TwoController.h"
#import "ThreeViewController.h"
#import "myCell.h"
#import "FourViewController.h"
@interface TwoController ()<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>
@property (strong, nonatomic)UIScrollView *scrollView;
@property (strong, nonatomic)UITableView *tableView;
@property (strong, nonatomic)UIImageView *image1;
@property (strong, nonatomic)UIImageView *image2;
@property (strong, nonatomic)UIImageView *image3;
@property (strong, nonatomic)ThreeViewController *three;
@property (strong, nonatomic)FourViewController *four;
@end

@implementation TwoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 375, 667)];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    //_three = [[ThreeViewController alloc] init];
    _four = [[FourViewController alloc] init];
//    [_three changeFontWithBlock:^(UIFont *font, NSString *text) {
//        if (self.myBlock) {
//            self.myBlock(font,text);
//        }
//    }];
    [self.view addSubview:_tableView];
}
-(void)changeFontWithBlock:(MyBlock)myBlock{
    self.myBlock = myBlock;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    myCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reId"];
    if (!cell) {
        cell = [[myCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"reId" row:indexPath];
    }
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat height = indexPath.row%2>0?50:200;
    NSLog(@"%f",height);
    return height;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.navigationController pushViewController:_four animated:YES];
}
- (void)viewDidAppear:(BOOL)animated{
     NSLog(@"%ld",self.navigationController.viewControllers.count);
}
@end
