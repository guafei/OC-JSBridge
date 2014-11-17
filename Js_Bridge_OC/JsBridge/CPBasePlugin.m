//
//  CPBasePlugin.m
//  Js_Bridge_OC
//
//  Created by guafei on 14/11/16.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import "CPBasePlugin.h"

@interface CPBasePlugin()

@property (nonatomic, strong) NSDictionary *parameters;

@end

@implementation CPBasePlugin

@synthesize parameters=_parameters;

- (instancetype)initPluginWithParameters:(NSDictionary *) parameters
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.parameters = parameters;
    [self __init];
    return self;
}

- (void)excute
{
    
}

- (void)__init
{
    
}

@end
