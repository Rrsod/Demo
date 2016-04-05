//
//  myCell.m
//  Demo
//
//  Created by Youlala on 16-3-31.
//  Copyright (c) 2016年 Youlala. All rights reserved.
//

#import "myCell.h"
@interface myCell()<UIScrollViewDelegate>
@property (strong, nonatomic)UIScrollView *scrollView;
@property (strong, nonatomic)UIImageView *image1;
@property (strong, nonatomic)UIImageView *image2;
@property (strong, nonatomic)UIImageView *image3;
@end
@implementation myCell

- (void)awakeFromNib {

}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier row:(NSIndexPath *)indexPath{
    myCell *my = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (indexPath.row%2==0) {
    _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 375, 200)];
    _scrollView.contentSize = CGSizeMake(0,640);
    _scrollView.delegate = self;
    //_scrollView.pagingEnabled = YES;
    _scrollView.showsVerticalScrollIndicator = NO;
    _image1 = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,375, 200)];
    _image2 = [[UIImageView alloc] initWithFrame:CGRectMake(0,220, 375, 200)];
    _image3 = [[UIImageView alloc] initWithFrame:CGRectMake(0,440, 375, 200)];
    _image1.image = [UIImage imageNamed:@"git"];
    _image2.image = [UIImage imageNamed:@"git"];
    _image3.image = [UIImage imageNamed:@"git"];
    [_scrollView  addSubview:_image1];
    [_scrollView  addSubview:_image2];
    [_scrollView  addSubview:_image3];
    [my.contentView addSubview:_scrollView];
    }
    else{
        my.textLabel.text = @"进入";
    }
    return my;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
