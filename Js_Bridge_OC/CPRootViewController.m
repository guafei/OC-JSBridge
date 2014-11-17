//
//  CPRootViewController.m
//  Js_Bridge_OC
//
//  Created by guafei on 14-11-11.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import "CPRootViewController.h"

@implementation CPRootViewController

- (instancetype)init
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //init root webview
    UIWebView *webView = [CPBaseViewController sharedSingletonWebView];
    NSURL *url = [NSURL URLWithString:@"http://127.0.0.1:8888/static.html"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [webView loadRequest:request];
}

#pragma mark UIWebViewDelegate

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    //all request from h5 will call this function ,except xhr
    BOOL shouldLoad = [super webView:webView shouldStartLoadWithRequest:request navigationType:navigationType];
    
    return shouldLoad;
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"webViewDidStartLoad");
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"webViewDidFinishLoad");
//    [self runJs:@"callbackAction();"];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"didFailLoadWithError");
//    [self runJs:@"callbackAction();"];
}

@end
