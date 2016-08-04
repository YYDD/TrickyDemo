//
//  NSObject+AppleJson.m
//  recentTest
//
//  Created by YYDD on 16/8/4.
//  Copyright © 2016年 com.yydd.cn. All rights reserved.
//

#import "NSObject+AppleJson.h"

@implementation NSObject (AppleJson)

-(NSString *)JSONFragment {

    if (!self) {
        return nil;
    }

    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&error];
    if (error) {
        return nil;
    }

    if (!data) {
        return nil;
    }

    NSString *str = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    return str;

}

-(NSString *)JSONRepresentation {
    
    return [self JSONFragment];

}


@end
