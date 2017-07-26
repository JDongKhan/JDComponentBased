//
//  JDDynamic.m
//  JDLib
//
//  Created by 王金东 on 2017/7/25.
//  Copyright © 2017年 王金东. All rights reserved.
//

#import "JDDynamic.h"
#import <JDLibCore/NSObject+jd_lib.h>

@implementation JDDynamic

+ (void)log {
    JDDynamic *d = [[JDDynamic alloc] init];
    NSLog(@"JDLib");
    [d log];
}

@end
