//
//  ViewController.m
//  TXAdapterDemo
//
//  Created by komlin on 2017/11/6.
//  Copyright © 2017年 张雄. All rights reserved.
//

#import "ViewController.h"
#import "TXAdapter.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView * view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, tRealLength(50), tRealLength(50))];
    NSLog(@"真实长度：%f",tRealLength(50));
    view.backgroundColor=[UIColor redColor];
    [self.view addSubview:view];
    NSLog(@"当前设备");
    switch (tCurrentType()) {
        case TXAdapterPhoneType_iPhone3GS_4_4S:
            NSLog(@"TXAdapterPhoneType_iPhone3GS_4_4S");
            break;
        case TXAdapterPhoneType_iPhone5_5C_5S_5SE:
            NSLog(@"TXAdapterPhoneType_iPhone5_5C_5S_5SE");
            break;
        case TXAdapterPhoneType_iPhone6_6S_7_8:
            NSLog(@"TXAdapterPhoneType_iPhone6_6S_7_8");
            break;
        case TXAdapterPhoneType_iPhone6Plus_6SPlus_7Plus_8Plus:
            NSLog(@"TXAdapterPhoneType_iPhone6Plus_6SPlus_7Plus_8Plus");
            break;
        case TXAdapterPhoneType_iPhoneX:
            NSLog(@"TXAdapterPhoneType_iPhoneX");
            break;
        case TXAdapterPhoneTypeOther:
            break;
        default:
            break;
    }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
