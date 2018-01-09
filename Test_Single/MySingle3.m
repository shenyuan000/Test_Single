//
//  MySingle3.m
//  单例测试
//
//  Created by YIXUN on 2018/1/8.
//  Copyright © 2018年 shenyuan. All rights reserved.
//

#import "MySingle3.h"

@implementation MySingle3

 static MySingle3 *_mySingle = nil;
+(instancetype)shareInstance
{
    if (_mySingle == nil) {
        _mySingle = [[MySingle3 alloc] init];
    }
    return _mySingle;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mySingle = [super allocWithZone:zone];
    });
    return _mySingle;
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
