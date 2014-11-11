//
//  CPBaseViewController.m
//  Js_Bridge_OC
//
//  Created by guafei on 14-11-11.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import "CPBaseViewController.h"
#import "Constants.h"
#import "CPURLProtocol.h"

@implementation CPBaseViewController

@synthesize webView=_webView;

- (instancetype)init
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    [self __init];
    return self;
}

- (void)__init
{
    [self.view setFrame:CP_SCREEN_BOUNDS];
    self.webView = [[UIWebView alloc] initWithFrame:self.view.frame];
    self.webView.delegate = self;
    [self.view addSubview:_webView];
    
    NSURL *url = [NSURL URLWithString:@"http://127.0.0.1:8888/static.html"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [self.webView loadRequest:request];
    
    [NSURLProtocol registerClass:[CPURLProtocol class]];
}

#pragma mark UIWebViewDelegate

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSLog(@"request is %@",request);
    
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"webViewDidStartLoad");
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"webViewDidFinishLoad");
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"didFailLoadWithError");
}


@end
