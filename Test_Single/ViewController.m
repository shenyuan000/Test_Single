//
//  ViewController.m
//  单例测试
//
//  Created by YIXUN on 2018/1/8.
//  Copyright © 2018年 shenyuan. All rights reserved.
//

#import "ViewController.h"
#import "MySingle.h"
#import "MySingle2.h"
#import "MySingle3.h"
#import "MySingle4.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self test1];
//    [self test2];
//    [self test3];
     [self test4];
}

- (void)test1 {
    MySingle *single01 = [MySingle shareInstance];
    NSLog(@"single 01 = %@",single01);
    
    MySingle *single02 = [MySingle shareInstance];
    NSLog(@"single 02 = %@",single02);
    
    MySingle *single03 = [[MySingle alloc] init];
    NSLog(@"single 03 = %@",single03);
    
    //    2018-01-08 16:16:42.844100+0800 单例测试[6605:444452] single 01 = <MySingle: 0x60400020b1a0>
    //    2018-01-08 16:16:42.844310+0800 单例测试[6605:444452] single 02 = <MySingle: 0x60400020b1a0>
    //    2018-01-08 16:16:42.844815+0800 单例测试[6605:444452] single 03 = <MySingle: 0x60400020b2e0>
}

- (void)test2 {
    MySingle2 *single01 = [MySingle2 shareInstance];
    NSLog(@"single 01 = %@",single01);
    
    MySingle2 *single02 = [MySingle2 shareInstance];
    NSLog(@"single 02 = %@",single02);
    
    MySingle2 *single03 = [[MySingle2 alloc] init];
    NSLog(@"single 03 = %@",single03);
    
    NSLog(@"copy = %@",[single03 copy]);
    
    MySingle2 *single04 = [MySingle2 new];
    NSLog(@"new  = %@",single04);
    
//    2018-01-08 16:56:26.973122+0800 单例测试[7195:493942] single 01 = <MySingle2: 0x604000017360>
//    2018-01-08 16:56:26.973357+0800 单例测试[7195:493942] single 02 = <MySingle2: 0x604000017360>
//    2018-01-08 16:56:26.973630+0800 单例测试[7195:493942] single 03 = <MySingle2: 0x604000017360>
//    2018-01-08 16:56:26.973808+0800 单例测试[7195:493942] copy = <MySingle2: 0x604000017360>
//    2018-01-08 16:56:26.973952+0800 单例测试[7195:493942] new  = <MySingle2: 0x604000017360>

}

- (void)test3 {
    MySingle3 *single01 = [MySingle3 shareInstance];
    NSLog(@"single 01 = %@",single01);
    
    MySingle3 *single02 = [MySingle3 shareInstance];
    NSLog(@"single 02 = %@",single02);
    
    MySingle3 *single03 = [[MySingle3 alloc] init];
    NSLog(@"single 03 = %@",single03);
    
    NSLog(@"copy = %@",[single03 copy]);
    
    MySingle3 *single04 = [MySingle3 new];
    NSLog(@"new  = %@",single04);
}

- (void)test4 {
    MySingle4 *single01 = [MySingle4 shareMySingle4];;
    NSLog(@"single 01 = %@",single01);
    
    MySingle4 *single02 = [MySingle4 shareMySingle4];
    NSLog(@"single 02 = %@",single02);
    
    MySingle4 *single03 = [[MySingle4 alloc] init];
    NSLog(@"single 03 = %@",single03);
    
    NSLog(@"copy = %@",[single03 copy]);
    
    MySingle4 *single04 = [MySingle4 new];
    NSLog(@"new  = %@",single04);
}


@end
