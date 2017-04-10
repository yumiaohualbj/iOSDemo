//
//  Dog+CoreDataProperties.m
//  coredata
//
//  Created by mac on 2017/3/28.
//  Copyright © 2017年 mac. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Dog+CoreDataProperties.h"

@implementation Dog (CoreDataProperties)

+ (NSFetchRequest<Dog *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Dog"];
}

@dynamic color;
@dynamic age;

@end
