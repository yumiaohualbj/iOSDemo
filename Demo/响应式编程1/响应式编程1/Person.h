//
//  Person.h
//  响应式编程1
//
//  Created by mac on 2017/5/12.
//  Copyright © 2017年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
@interface Person : NSObject
- (void)run;
- (void)study;


- (Person * (^)())runBlock;
- (Person * (^)())studyBlock;
@end
