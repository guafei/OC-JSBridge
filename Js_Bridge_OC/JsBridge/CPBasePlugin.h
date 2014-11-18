//
//  CPBasePlugin.h
//  Js_Bridge_OC
//
//  Created by guafei on 14/11/16.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CPBasePlugin : NSObject

@property (nonatomic)         id            delegate;

- (instancetype)initPluginWithParameters:(NSDictionary *) parameters withDelegate:(id)delegate;

- (void)excute;

@end
