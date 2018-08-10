//
//  PersonModel.h
//  Runtime
//
//  Created by Hanrun on 2018/8/10.
//  Copyright © 2018年 Hanrun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonModel : NSObject<NSCoding>
@property(copy,nonatomic) NSString *name;
@property(assign,nonatomic) NSInteger age;
@end
