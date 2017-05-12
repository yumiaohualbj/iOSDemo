//
//  Person.m
//  响应式编程1
//
//  Created by mac on 2017/5/12.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)run{
    
    NSLog(@"run");
}

- (void)study{
    NSLog(@"study");
}


- (Person * (^)())runBlock{
    Person * (^block)() = ^(){
        
        NSLog(@"run");
        return self;
        
    };
    
    return block;
    
}
- (Person * (^)())studyBlock{
    
    Person * (^block)() = ^(){
        
        NSLog(@"study");
        return self;
        
    };
    
    return block;
    
}
@end
