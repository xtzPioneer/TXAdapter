//
//  TXViewController.m
//  TXAdapter
//
//  Created by 张雄 on 10/09/2019.
//  Copyright (c) 2019 张雄. All rights reserved.
//

#import "TXViewController.h"
#import "TXAdapter.h"

@interface TXViewController ()

@end

@implementation TXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, tRealLength(80), tRealLength(50), tRealLength(50))];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    NSLog(@"真实Y：%f",tRealLength(80));
    NSLog(@"真实W_H：%f",tRealLength(50));
    NSLog(@"当前设备");
    switch (tCurrentType()) {
        case TXAdapterPhoneType_iPhone3GS_4_4S:
            NSLog(@"TXAdapterPhoneType_iPhone3GS_4_4S");
            break;
        case TXAdapterPhoneType_iPhone5_5C_5S_5SE:
            NSLog(@"TXAdapterPhoneType_iPhone5_5C_5S_5SE");
            break;
        case TXAdapterPhoneType_iPhone6_6S_7_8_SE_SE2_SE3:
            NSLog(@"TXAdapterPhoneType_iPhone6_6S_7_8_SE_SE2_SE3");
            break;
        case TXAdapterPhoneType_iPhone6Plus_6SPlus_7Plus_8Plus:
            NSLog(@"TXAdapterPhoneType_iPhone6Plus_6SPlus_7Plus_8Plus");
            break;
        case TXAdapterPhoneType_iPhoneX_XS_11Pro_12mini_13mini:
            NSLog(@"TXAdapterPhoneType_iPhoneX_XS_11Pro_12mini_13mini");
            break;
        case TXAdapterPhoneType_iPhoneXSMax_XR_11_11ProMax:
            NSLog(@"TXAdapterPhoneType_iPhoneXSMax_XR_11_11ProMax");
            break;
        case TXAdapterPhoneType_iPhone12_12Pro_13_13Pro_14:
            NSLog(@"TXAdapterPhoneType_iPhone12_12Pro_13_13Pro_14");
            break;
        case TXAdapterPhoneType_iPhone12ProMax_13ProMax_14Plus:
            NSLog(@"TXAdapterPhoneType_iPhone12ProMax_13ProMax_14Plus");
            break;
        case TXAdapterPhoneType_iPhone14Pro:
            NSLog(@"TXAdapterPhoneType_iPhone14Pro");
            break;
        case TXAdapterPhoneType_iPhone14ProMax:
            NSLog(@"TXAdapterPhoneType_iPhone14ProMax");
            break;
        case TXAdapterPhoneTypeOther:
            NSLog(@"Other");
            break;
        default:
            break;
    }
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
