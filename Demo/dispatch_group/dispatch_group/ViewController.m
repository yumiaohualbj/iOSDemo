//
//  ViewController.m
//  dispatch_group
//
//  Created by mac on 2017/5/11.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//     1 创建一个调度任务组  dispatch_group_create()
    
//    把一个任务异步提交到任务组里  dispatch_group_async()
    
//    dispatch_group_enter() / dispatch_group_leave()这种方式用在不使用dispatch_group_async()来提交任务，且必须配合使用
//    
// 用来监听任务组事件的执行完毕 dispatch_group_notify(<#dispatch_group_t  _Nonnull group#>, <#dispatch_queue_t  _Nonnull queue#>, <#^(void)block#>)
//dispatch_group_wait 设置等待时间，在等待时间结束后，如果还没有执行完任务组，则返回。返回0代表执行成功，非0则执行失败
    //[self disGroup];
    
    [self disGroupEnterAndLeave];
}


- (void)disGroupEnterAndLeave{
    
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_group_t group = dispatch_group_create();
    
    //任务1
    
    dispatch_group_enter(group);
    
    dispatch_async(globalQueue, ^{
        NSLog(@"run task 1");
        sleep(1);
        dispatch_group_leave(group);
    });
    
    
    //任务2
    
    dispatch_group_enter(group);
   dispatch_async(globalQueue, ^{
       NSLog(@"run task 2");
       sleep(2);
       dispatch_group_leave(group);
   });
    
    
    //任务3
    
    dispatch_group_enter(group);
    dispatch_async(globalQueue, ^{
        NSLog(@"run task 3");
        sleep(3);
        dispatch_group_leave(group);
    });
    
    //一直等待完成
    dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
    
    //任务4
    dispatch_group_notify(group, globalQueue, ^{
        NSLog(@"tun task 4");
    });
}
- (void)disGroup{
    
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_queue_t myQueue = dispatch_queue_create("myQueue", 0);
    dispatch_group_t group = dispatch_group_create();
    
    dispatch_group_async(group, globalQueue, ^{
        NSLog(@"run task 1");
    });
    
    
    dispatch_group_async(group, myQueue, ^{
        NSLog(@"run task 2");
    });
    
    dispatch_group_async(group, myQueue, ^{
         NSLog(@"run task 3");
    });
    
    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        NSLog(@"run task 4");
    });
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
