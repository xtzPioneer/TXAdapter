//
//  TXAdapter.m
//  TXAdapter
//
//  Created by 张雄 on 2017/11/6.
//  Copyright © 2017年 张雄. All rights reserved.
//

#import "TXAdapter.h"

/** 所需适配机型-屏幕宽 */
CGFloat const SCREEN_WIDTH_iPhone3GS_4_4S       = 320.0f;
CGFloat const SCREEN_WIDTH_iPhone5_5C_5S_5SE    = 320.0f;
CGFloat const SCREEN_WIDTH_iPhone6_6S_7_8_SE_SE2    = 375.0f;
CGFloat const SCREEN_WIDTH_iPhone6Plus_6SPlus_7Plus_8Plus  = 414.0f;
CGFloat const SCREEN_WIDTH_iPhoneX_XS_11Pro_12mini_13mini  = 375.0f;
CGFloat const SCREEN_WIDTH_iPhoneXSMax_XR_11_11ProMax      = 414.0f;
CGFloat const SCREEN_WIDTH_iPhone12_12Pro_13_13Pro         = 390.0f;
CGFloat const SCREEN_WIDTH_iPhone12ProMax_13ProMax         = 428.0f;

/** 所需适配机型-屏幕高 */
CGFloat const SCREEN_HEIGHT_iPhone3GS_4_4S      = 480.0f;
CGFloat const SCREEN_HEIGHT_iPhone5_5C_5S_5SE   = 568.0f;
CGFloat const SCREEN_HEIGHT_iPhone6_6S_7_8_SE_SE2   = 667.0f;
CGFloat const SCREEN_HEIGHT_iPhone6Plus_6SPlus_7Plus_8Plus = 736.0f;
CGFloat const SCREEN_HEIGHT_iPhoneX_XS_11Pro_12mini_13mini = 812.0f;
CGFloat const SCREEN_HEIGHT_iPhoneXSMax_XR_11_11ProMax     = 896.0f;
CGFloat const SCREEN_HEIGHT_iPhone12_12Pro_13_13Pro        = 844.0f;
CGFloat const SCREEN_HEIGHT_iPhone12ProMax_13ProMax        = 926.0f;

@implementation TXAdapter

/** 共享适配器 */
+ (instancetype)shareAdapter{
    static dispatch_once_t onceToken;
    static TXAdapter * _instance = nil;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

/** 重载方法 */
- (instancetype)init{
    if (self = [super init]) {
        self.defaultType = TXAdapterPhoneType_iPhone6_6S_7_8_SE_SE2;
    }
    return self;
}

/** 设置默认类型 */
- (void)setDefaultType:(TXAdapterPhoneType)defaultType {
    _defaultType = defaultType;
    switch (_defaultType) {
        case TXAdapterPhoneType_iPhone3GS_4_4S:
            _defaultScreenWidth  = SCREEN_WIDTH_iPhone3GS_4_4S;
            _defaultScreenHeight = SCREEN_HEIGHT_iPhone3GS_4_4S;
            break;
        case TXAdapterPhoneType_iPhone5_5C_5S_5SE:
            _defaultScreenWidth  = SCREEN_WIDTH_iPhone5_5C_5S_5SE;
            _defaultScreenHeight = SCREEN_HEIGHT_iPhone5_5C_5S_5SE;
            break;
        case TXAdapterPhoneType_iPhone6_6S_7_8_SE_SE2:
            _defaultScreenWidth  = SCREEN_WIDTH_iPhone6_6S_7_8_SE_SE2;
            _defaultScreenHeight = SCREEN_HEIGHT_iPhone6_6S_7_8_SE_SE2;
            break;
        case TXAdapterPhoneType_iPhone6Plus_6SPlus_7Plus_8Plus:
            _defaultScreenWidth  = SCREEN_WIDTH_iPhone6Plus_6SPlus_7Plus_8Plus;
            _defaultScreenHeight = SCREEN_HEIGHT_iPhone6Plus_6SPlus_7Plus_8Plus;
            break;
        case TXAdapterPhoneType_iPhoneX_XS_11Pro_12mini_13mini:
            _defaultScreenWidth  = SCREEN_WIDTH_iPhoneX_XS_11Pro_12mini_13mini;
            _defaultScreenHeight = SCREEN_HEIGHT_iPhoneX_XS_11Pro_12mini_13mini;
            break;
        case TXAdapterPhoneType_iPhoneXSMax_XR_11_11ProMax:
            _defaultScreenWidth  = SCREEN_WIDTH_iPhoneXSMax_XR_11_11ProMax;
            _defaultScreenHeight = SCREEN_HEIGHT_iPhoneXSMax_XR_11_11ProMax;
            break;
        case TXAdapterPhoneType_iPhone12_12Pro_13_13Pro:
            _defaultScreenWidth  = SCREEN_WIDTH_iPhone12_12Pro_13_13Pro;
            _defaultScreenHeight = SCREEN_HEIGHT_iPhone12_12Pro_13_13Pro;
            break;
        case TXAdapterPhoneType_iPhone12ProMax_13ProMax:
            _defaultScreenWidth  = SCREEN_WIDTH_iPhone12ProMax_13ProMax;
            _defaultScreenHeight = SCREEN_HEIGHT_iPhone12ProMax_13ProMax;
            break;
        case TXAdapterPhoneTypeOther:
            break;
        default:
            break;
    }
}

@end
