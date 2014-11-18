//
//  CPCameraPlugin.m
//  Js_Bridge_OC
//
//  Created by guafei on 14/11/16.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import "CPCameraPlugin.h"

@interface CPCameraPlugin()

@end

@implementation CPCameraPlugin

- (instancetype)initPluginWithParameters:(NSDictionary *) parameters withDelegate:(id)delegate
{
    self = [super initPluginWithParameters:parameters withDelegate:delegate];
    
    return self;
}

- (void)__init
{
    self.imagePickerController = [[UIImagePickerController alloc] init];
    self.imagePickerController.sourceType = UIImagePickerControllerSourceTypeCamera;//simulator should not excute
    self.imagePickerController.allowsEditing = YES;
    self.imagePickerController.delegate = self.delegate;
}

- (void)excute
{
    [super excute];
    
    if([self.delegate respondsToSelector:@selector(presentModalViewController:animated:)])
    {
        [self.delegate presentModalViewController:self.imagePickerController animated:YES];
    }
    
}

@end
