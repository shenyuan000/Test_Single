//
//  MySingle2.m
//  单例测试
//
//  Created by YIXUN on 2018/1/8.
//  Copyright © 2018年 shenyuan. All rights reserved.
//

#import "MySingle2.h"

@implementation MySingle2
+(instancetype)shareInstance
{
    static MySingle2 *_mySingle = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mySingle = [[super allocWithZone:NULL] init];
    });
    return _mySingle;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    return [self shareInstance];
}

- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

- (id)mutableCopyWithZone:(NSZone *)zone
{
    return self;
}

@end
