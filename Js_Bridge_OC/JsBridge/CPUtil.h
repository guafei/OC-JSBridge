//
//  CPUtil.h
//  Js_Bridge_OC
//
//  Created by guafei on 14/11/12.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import "CPBaseViewController.h"

@interface CPUtil : NSObject

+ (NSString *)getClassName:(NSString *)data;

+ (NSString *)getPluginClassName:(NSString *)data;

+ (NSString *)getPluginViewControllerClassName:(NSString *)data;

+ (NSDictionary *)dataMapToDic:(NSString *)data;

+ (NSString*)pathForResource:(NSString*)resourcepath;

@end

