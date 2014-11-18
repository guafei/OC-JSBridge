//
//  CPUtil.m
//  Js_Bridge_OC
//
//  Created by guafei on 14/11/12.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import "CPUtil.h"

@implementation CPUtil

+(NSString *)getClassName:(NSString *)data
{
    return [[self commonMapToDic:data] objectForKey:@"class"];
}

+ (NSString *)getPluginClassName:(NSString *)data
{
    return [[CPUtil getClassName:data] stringByAppendingString:@"Plugin"];
}

+ (NSString *)getPluginViewControllerClassName:(NSString *)data
{
    return [[CPUtil getClassName:data] stringByAppendingString:@"ViewController"];
}

//cpcall:&class=CPCamera&parameters=camera
+(NSDictionary *)dataMapToDic:(NSString *)data
{
    NSMutableDictionary *dic = [self commonMapToDic:data];
    [dic removeObjectForKey:@"class"];
    
    return dic;
}

+(NSMutableDictionary *)commonMapToDic:(NSString *)data
{
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    NSArray *array = [data componentsSeparatedByString:@"&"];
    for (int i = 1; i < [array count]; i++)
    {
        NSString *tempS = [array objectAtIndex:i];
        NSArray *tempA = [tempS componentsSeparatedByString:@"="];
        [dic setValue:[tempA objectAtIndex:1] forKey:[tempA objectAtIndex:0]];
    }
    
    return dic;
}

+ (NSString*)pathForResource:(NSString*)resourcepath
{
//    NSBundle* mainBundle = [NSBundle mainBundle];
//    NSMutableArray* directoryParts = [NSMutableArray arrayWithArray:[resourcepath componentsSeparatedByString:@"/"]];
//    NSString* filename = [directoryParts lastObject];
//    
//    [directoryParts removeLastObject];
    
    return nil;
}

@end
