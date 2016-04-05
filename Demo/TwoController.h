//
//  TwoController.h
//  Demo
//
//  Created by Youlala on 16-3-31.
//  Copyright (c) 2016年 Youlala. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^MyBlock)(UIFont *font,NSString *text);
@interface TwoController : UIViewController
@property (nonatomic,copy)MyBlock myBlock;
-(void)changeFontWithBlock:(MyBlock)myBlock;
@end
