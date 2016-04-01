//
//  DesViewController.m
//  MyClassOver
//
//  Created by 李聪会 on 16/3/29.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import "DesViewController.h"

@interface DesViewController ()<UIWebViewDelegate>
@property (nonatomic,strong)UITableView *quitTableView;

@end

@implementation DesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self creatWebView];
}
-(void)creatWebView
{
    NSString* path = [[NSBundle mainBundle] pathForResource:self.indexHtml ofType:@"html"];
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 64, WIDTH, HEIGHT-64)];
    webView.delegate  =self;
    [self.view addSubview:webView];
    NSString * htmlCont = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    // 获取当前应用的根目录
    NSString *path1 = [[NSBundle mainBundle] bundlePath];
    NSURL *baseURL = [NSURL fileURLWithPath:path1];
    [webView loadHTMLString:htmlCont baseURL:baseURL];

}
@end
