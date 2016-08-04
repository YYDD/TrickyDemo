//
//  UIView+UIThread.m
//  newCampus
//
//  Created by YYDD on 16/5/5.
//  Copyright © 2016年 com.campus.cn. All rights reserved.
//

#import "UIView+UIThread.h"
#import <objc/runtime.h>

@implementation UIView (UIThread)

+(void)load
{
    [super load];

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [UIView changeMethod1];
        [UIView changeMethod2];
        [UIView changeMethod3];
    });
    
   
    
}

+(void)changeMethod1
{
    SEL originalSelector = @selector(setNeedsLayout);
    SEL swizzleSelector = @selector(trick_setNeedsLayout);
    Method originalMethod = class_getInstanceMethod([self class], originalSelector);
    Method swizzleMethod = class_getInstanceMethod([self class], swizzleSelector);
    method_exchangeImplementations(originalMethod, swizzleMethod);
}

+(void)changeMethod2
{
    
    SEL originalSelector = @selector(setNeedsDisplay);
    SEL swizzleSelector = @selector(trick_setNeedsDisplay);
    Method originalMethod = class_getInstanceMethod([self class], originalSelector);
    Method swizzleMethod = class_getInstanceMethod([self class], swizzleSelector);
    method_exchangeImplementations(originalMethod, swizzleMethod);
}


+(void)changeMethod3
{
    
    SEL originalSelector = @selector(setNeedsDisplayInRect:);
    SEL swizzleSelector = @selector(trick_setNeedsDisplayInRect:);
    Method originalMethod = class_getInstanceMethod([self class], originalSelector);
    Method swizzleMethod = class_getInstanceMethod([self class], swizzleSelector);
    method_exchangeImplementations(originalMethod, swizzleMethod);
}




-(void)trick_setNeedsLayout
{
    [self checkMainThread];
    [self trick_setNeedsLayout];
}


-(void)trick_setNeedsDisplay
{
    [self checkMainThread];

    [self trick_setNeedsDisplay];
}

-(void)trick_setNeedsDisplayInRect:(CGRect)rect
{
    [self checkMainThread];
    [self trick_setNeedsDisplayInRect:rect];
}


-(void)checkMainThread
{
    BOOL isMainThread = [[NSThread currentThread]isMainThread];
    if (!isMainThread) {
        NSLog(@"不在主线程中， ui居然不在主线程。。。。。。。。。");
    }
}


@end
