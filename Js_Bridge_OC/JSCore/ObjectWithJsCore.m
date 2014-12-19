//
//  ObjectWithJsCore.m
//  Js_Bridge_OC
//
//  Created by guafei on 14/12/19.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import "ObjectWithJsCore.h"

/**
 *  1: Mapping params data to Object Model
 *  2: Call Objective-c by JSExport (but it should be native code, can't be html 
 *     side call to native side, because this framework is js excuting Engine)
 *  3: Call js by JSValue
 */

@interface ObjectWithJsCore()

@property (nonatomic) JSContext* context;
@property (nonatomic) JSValue* calculator;

@end

@implementation ObjectWithJsCore



@end
