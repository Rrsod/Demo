//
//  ThreeViewController.m
//  Demo
//
//  Created by Youlala on 16-3-31.
//  Copyright (c) 2016年 Youlala. All rights reserved.
//

#import "ThreeViewController.h"
#import "OneController.h"
#import "myCell.h"
@interface ThreeViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic)UITableView *tableView;
@property (strong, nonatomic)NSArray *array;
@property (strong, nonatomic)UIFont *font;
@property (strong, nonatomic)NSString *text;
@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame];
    _tableView.dataSource =self;
    _tableView.delegate = self;
    _tableView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_tableView];
}
+(instancetype)three{
    return [[self alloc]init];
}
//+(instancetype)allocWithZone:(struct _NSZone *)zone{
//    static ThreeViewController *three;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        three = [super allocWithZone:zone];
//    });
//    return three;
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}
-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index{
    return 1;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    myCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ReId"];
    if (!cell) {
        cell = [[myCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ReId"];
        _array = [UIFont familyNames];
        [cell.textLabel setFont:[UIFont fontWithName:_array[indexPath.row] size:15]];
        cell.textLabel.text = @"Hello,how old are you?";
        _text = cell.textLabel.text;
    }
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    _font = [UIFont fontWithName:_array[indexPath.row] size:15];
   // OneController *o = [[OneController alloc]init];//self.navigationController.viewControllers[0];
    if (self.myBlock) {
        self.myBlock(_font,_text);
    }
    [self.navigationController popToRootViewControllerAnimated:YES];
}
-(void)changeFontWithBlock:(MyBlock)myBlock{
    self.myBlock = myBlock;
}
-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"%ld",self.navigationController.viewControllers.count);
}
-(void)viewDidDisappear:(BOOL)animated{
}
@end
