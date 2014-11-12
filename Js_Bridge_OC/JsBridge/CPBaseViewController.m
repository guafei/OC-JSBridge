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

static UIWebView *webView;

- (instancetype)init
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    [self __init];
    return self;
}

+ (UIWebView *)sharedSingletonWebView
{
    @synchronized(self)
    {
        if(!webView)
        {
            webView = [[UIWebView alloc] initWithFrame:CP_SCREEN_BOUNDS];
        }
        
        return webView;
    }
}

- (void)__init
{
    [self.view setFrame:CP_SCREEN_BOUNDS];
    webView = [CPBaseViewController sharedSingletonWebView];
    webView.delegate = self;
    [self.view addSubview:webView];
    
    NSURL *url = [NSURL URLWithString:@"http://127.0.0.1:8888/static.html"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [webView loadRequest:request];
    
//    [NSURLProtocol registerClass:[CPURLProtocol class]];
}

- (NSString*)runJs:(NSString*)jsStr
{
    return [webView stringByEvaluatingJavaScriptFromString:jsStr];
}

- (void)dispatchRequest:(NSURLRequest *)request
{
    if ([[[request URL] scheme] hasPrefix:@"mailto"] || [[[request URL] scheme] hasPrefix:@"sms"] || [[[request URL] scheme] hasPrefix:@"tel"])
    {
        //do something
    }
    
    if([[[request URL] scheme] hasPrefix:@"non-http"])
    {
        
    }
}

#pragma mark UIWebViewDelegate

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"CPBaseViewController webViewDidStartLoad");
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"CPBaseViewController webViewDidFinishLoad");
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"CPBaseViewController didFailLoadWithError");
}


@end
