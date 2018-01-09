//
//  MySingle.m
//  单例测试
//
//  Created by YIXUN on 2018/1/8.
//  Copyright © 2018年 shenyuan. All rights reserved.
//

#import "MySingle.h"

@implementation MySingle
+ (instancetype)shareInstance
{
    static MySingle *_mySingle = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mySingle = [[MySingle alloc] init];
    });
    return _mySingle;
}
@end
