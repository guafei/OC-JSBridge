//
//  CPURLProtocol.m
//  Js_Bridge_OC
//
//  Created by guafei on 14-11-11.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import "CPURLProtocol.h"

@implementation CPURLProtocol


+ (BOOL)canInitWithRequest:(NSURLRequest *)request
{
    NSLog(@"canInitWithRequest is called and request is %@",request);
    
    return NO;
}

@end
