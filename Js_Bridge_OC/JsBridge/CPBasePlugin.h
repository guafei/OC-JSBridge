//
//  CPBasePlugin.h
//  Js_Bridge_OC
//
//  Created by guafei on 14/11/16.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CPBasePlugin : NSObject

- (instancetype)initPluginWithParameters:(NSDictionary *) parameters;

- (void)excute;

@end
