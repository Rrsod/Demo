//
//  ThreeViewController.h
//  Demo
//
//  Created by Youlala on 16-3-31.
//  Copyright (c) 2016年 Youlala. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^MyBlock)(UIFont *font,NSString *text);
@interface ThreeViewController : UIViewController
@property (nonatomic,copy)MyBlock myBlock;
-(void)changeFontWithBlock:(MyBlock)myBlock;
+(instancetype) three;
@end
