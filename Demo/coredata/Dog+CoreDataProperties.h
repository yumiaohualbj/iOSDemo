//
//  Dog+CoreDataProperties.h
//  coredata
//
//  Created by mac on 2017/3/28.
//  Copyright © 2017年 mac. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Dog+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Dog (CoreDataProperties)

+ (NSFetchRequest<Dog *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *color;
@property (nonatomic) int16_t age;

@end

NS_ASSUME_NONNULL_END
