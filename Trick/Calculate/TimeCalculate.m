//
//  TimeCalculate.m
//  TrickyDemo
//
//  Created by YYDD on 16/8/19.
//  Copyright © 2016年 com.trickyDemo.cn. All rights reserved.
//

#import "TimeCalculate.h"

@implementation TimeCalculate

+(NSDate *)curDate {
    
    return [NSDate date];
}

+(BOOL)beInToday:(NSDate *)date {
    
    //判断是否是今天 只要年=年 月=月 日=日 就可以了
    NSDate *nowDate = [TimeCalculate curDate];
    
    NSDateComponents *nowDateComponents = [[NSCalendar currentCalendar] components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekOfMonth | NSCalendarUnitWeekday fromDate:nowDate];
    
    NSInteger nowMonth = nowDateComponents.month;
    NSInteger nowDay = nowDateComponents.day;
    NSInteger nowYear = nowDateComponents.year;
    
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekOfMonth | NSCalendarUnitWeekday fromDate:date];
    
    NSInteger month = dateComponents.month;
    NSInteger day = dateComponents.day;
    NSInteger year = dateComponents.year;
    
    if (nowYear == year && nowMonth == month && nowDay == day) {
        return YES;
    }
    return NO;

}


+(BOOL)beInTomorrow:(NSDate *)date {

    //把时间 往前推1天 如果这个时间 和当前时间作比较是在同一天 那么就是明天了
    //是否是后天 前天 这种都可以依次类推
    NSDate *newDate = [NSDate dateWithTimeInterval:(-24 * 60 * 60) sinceDate:date];
   return [TimeCalculate beInToday:newDate];

}



@end
