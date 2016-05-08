//
//  UIImage+Color.h
//  CategoryTricks
//
//  Created by YYDD on 16/5/8.
//  Copyright © 2016年 com.categoryTricks.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Color)


/**
 *  通过色值 创建image
 *
 *  @param color color
 *  @param size  图片大小
 *
 *  @return 返回image
 */
+ (UIImage *)imageFilledWithColor:(UIColor *)color size:(CGSize)size;

/**
 *  uiimage设置圆角
 *
 *  @param cornerRadius 圆角度数
 *
 *  @return 返回圆角的image
 */
- (UIImage *)roundedCornerImageWithCornerRadius:(CGFloat)cornerRadius;

/**
 *  uiimage设置圆角
 *
 *  @param cornerRadii 圆角度数
 *  @param corners     圆角的位置
 *
 *  @return 返回圆角的image
 */
- (UIImage *)roundedCornerImageWithCornerRadii:(CGSize)cornerRadii byRoundingCorners:(UIRectCorner)corners;

/**
 *  uiimage设置颜色
 *
 *  @param color color
 *
 *  @return 设置颜色后的image
 */
- (UIImage *)imageWithColor:(UIColor *)color;



@end
