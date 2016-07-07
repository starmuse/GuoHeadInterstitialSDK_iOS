//
//  ViewController.m
//  GuoHeadInterstitialSDK-Sample
//
//  Created by Keith on 3/8/16.
//  Copyright © 2016 keith.liu. All rights reserved.
//

#import "ViewController.h"

#import "GuoHeadInterstitialSDK.h"

@interface ViewController ()<GuoHeadInterstitialSDKDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [GuoHeadInterstitialSDK configInterstitialSDKWithAppKey:@"1d1ed759fa82ed3c"];
    
}
- (IBAction)preloadInterstitialAdButtonPressed:(id)sender {
    
    [GuoHeadInterstitialSDK preloadInterstitialWithDelegate:self withPlace:nil];
}

- (IBAction)showInterstitial:(id)sender {
    
    [GuoHeadInterstitialSDK displayInterstitialWithDelegate:self withPlace:nil withCurrentViewController:self];
}

- (void)ghInterstitialSDKDidCacheFailureWithPlace:(NSString *)place {
    NSLog(@"预加载失败");
}

- (void)ghInterstitialSDKDidCacheSuccessWithPlace:(NSString *)place {
    NSLog(@"预加载成功");
}

- (void)ghInterstitialSDKDidClickedWithPlace:(NSString *)place {
    NSLog(@"点击了广告内容");
}

- (void)ghInterstitialSDKDidClosedWithPlace:(NSString *)place {
    NSLog(@"广告被关闭，预加载下一条广告");
    [GuoHeadInterstitialSDK preloadInterstitialWithDelegate:self withPlace:nil];
}

- (void)ghInterstitialSDKDidShowFailureWithPlace:(NSString *)place {
    
}

- (void)ghInterstitialSDKDidShowSuccessWithPlace:(NSString *)place {
    
}

- (void)ghInterstitialSDKNoActivityWithPlace:(NSString *)place {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
