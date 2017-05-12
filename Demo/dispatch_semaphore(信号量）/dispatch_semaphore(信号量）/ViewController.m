//
//  ViewController.m
//  dispatch_semaphore(信号量）
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
    //创建信号量，参数：信号量的处置，如果小于0则会返回NULL
    
    //    dispatch_semaphore_create(信号量值)
    
    //等待降级信号量
    //    dispatch_semaphore_wait(信号量, 等待时间)
    
    //提高信号量
    //dispatch_semaphore_signal(信号量)

    
    
    [self testDispatchSignal];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)testDispatchSignal{
   
    //create的value表示，最多几个资源可以访问
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(3);
    
    
    //创建线程
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    
    //任务1
    dispatch_async(queue, ^{
        
        dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
        NSLog(@"run task 1");
        sleep(1);
        NSLog(@"complete task 1");
        dispatch_semaphore_signal(semaphore);
        
    });
    
    //任务2
    dispatch_async(queue, ^{
        
        dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
        NSLog(@"run task 2");
        sleep(1);
        NSLog(@"complete task 2");
        dispatch_semaphore_signal(semaphore);
        
    });
    
    
    
    //任务1
    dispatch_async(queue, ^{
        
        dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
        NSLog(@"run task 3");
        sleep(1);
        NSLog(@"complete task 3");
        dispatch_semaphore_signal(semaphore);
        
    });
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
