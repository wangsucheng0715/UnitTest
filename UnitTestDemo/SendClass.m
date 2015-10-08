//
//  SendClass.m
//  UnitTestDemo
//
//  Created by wsc on 15/9/30.
//  Copyright © 2015年 wsc. All rights reserved.
//

#import "SendClass.h"

@implementation SendClass

+(BOOL)send:(NSString*)message{
    if (message) {
        return YES;
    }
    return NO;
}

@end
