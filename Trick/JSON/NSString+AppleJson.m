//
//  NSString+AppleJson.m
//  recentTest
//
//  Created by YYDD on 16/8/4.
//  Copyright © 2016年 com.yydd.cn. All rights reserved.
//

#import "NSString+AppleJson.h"

@implementation NSString (AppleJson)


-(id)JSONValue {
    
    if (!self) {
        return nil;
    }
    
    
    
    NSError *error = nil;
    NSData *data = nil;
    if (![self isKindOfClass:[NSData class]]) {
//        data = [NSKeyedArchiver archivedDataWithRootObject:self];
        data = [self dataUsingEncoding:NSUTF8StringEncoding];
    }
    id value = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    
    
    if (error) {
        NSLog(@"error == %@",error);
        return nil;
    }
    
    return value;

}


-(id)JSONFragmentValue {

    return [self JSONValue];
}


@end
