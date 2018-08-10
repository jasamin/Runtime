//
//  PersonModel.m
//  Runtime
//
//  Created by Hanrun on 2018/8/10.
//  Copyright © 2018年 Hanrun. All rights reserved.
//

#import "PersonModel.h"
#import <objc/runtime.h>

@implementation PersonModel
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:@(self.age) forKey:@"age"];
   
    unsigned int num = 0;
    NSLog(@"%u",num);
    
}

- (nullable instancetype)initWithCoder:(nonnull NSCoder *)aDecoder {
    self = [super init];
    if (self) {
       self.name = [aDecoder decodeObjectForKey:@"name"];
       self.age =  [[aDecoder decodeObjectForKey:@"age"] integerValue];
    }
    return self;
}

@end
