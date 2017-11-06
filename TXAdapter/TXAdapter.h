//
//  TXAdapter.h
//  TXAdapter
//
//  Created by 张雄 on 2017/11/6.
//  Copyright © 2017年 张雄. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/*适配手机类型*/
typedef NS_ENUM(NSInteger,TXAdapterPhoneType) {
    TXAdapterPhoneType_iPhone3GS_4_4S    = 0,
    TXAdapterPhoneType_iPhone5_5C_5S_5SE = 1,
    TXAdapterPhoneType_iPhone6_6S_7_8    = 2,
    TXAdapterPhoneType_iPhone6Plus_6SPlus_7Plus_8Plus = 3,
    TXAdapterPhoneType_iPhoneX           = 4,
    TXAdapterPhoneTypeOther              = 5
};

/*所需适配机型-屏幕宽*/
UIKIT_EXTERN CGFloat const SCREEN_WIDTH_iPhone3GS_4_4S;
UIKIT_EXTERN CGFloat const SCREEN_WIDTH_iPhone5_5C_5S_5SE;
UIKIT_EXTERN CGFloat const SCREEN_WIDTH_iPhone6_6S_7_8;
UIKIT_EXTERN CGFloat const SCREEN_WIDTH_iPhone6Plus_6SPlus_7Plus_8Plus;
UIKIT_EXTERN CGFloat const SCREEN_WIDTH_iPhoneX;
/*所需适配机型-屏幕高*/
UIKIT_EXTERN CGFloat const SCREEN_HEIGHT_iPhone3GS_4_4S;
UIKIT_EXTERN CGFloat const SCREEN_HEIGHT_iPhone5_5C_5S_5SE;
UIKIT_EXTERN CGFloat const SCREEN_HEIGHT_iPhone6_6S_7_8;
UIKIT_EXTERN CGFloat const SCREEN_HEIGHT_iPhone6Plus_6SPlus_7Plus_8Plus;
UIKIT_EXTERN CGFloat const SCREEN_HEIGHT_iPhoneX;

/*屏幕宽度*/
static inline CGFloat tScreenWidth() {
    return [UIScreen mainScreen].bounds.size.width;
}
/*幕高度*/
static inline CGFloat tScreenHeight() {
    return [UIScreen mainScreen].bounds.size.height;
}

/*当前屏幕类型*/
static inline TXAdapterPhoneType tCurrentType() {
    if (tScreenHeight() == SCREEN_HEIGHT_iPhone3GS_4_4S) return TXAdapterPhoneType_iPhone3GS_4_4S;
    if (tScreenHeight() == SCREEN_HEIGHT_iPhone5_5C_5S_5SE) return TXAdapterPhoneType_iPhone5_5C_5S_5SE;
    if (tScreenHeight() == SCREEN_HEIGHT_iPhone6_6S_7_8) return TXAdapterPhoneType_iPhone6_6S_7_8;
    if (tScreenHeight() == SCREEN_HEIGHT_iPhone6Plus_6SPlus_7Plus_8Plus) return TXAdapterPhoneType_iPhone6Plus_6SPlus_7Plus_8Plus;
    if (tScreenHeight() == SCREEN_HEIGHT_iPhoneX) return TXAdapterPhoneType_iPhoneX;
    return TXAdapterPhoneTypeOther;
}

@interface TXAdapter : NSObject

/*屏幕适配参考类型 默认为TXAdapterPhoneType_iPhone5*/
@property(nonatomic)TXAdapterPhoneType defaultType;
@property(nonatomic,readonly)CGFloat defaultScreenWidth;
@property(nonatomic,readonly)CGFloat defaultScreenHeight;
/*共享*/
+ (instancetype)shareAdapter;
@end

/*
 注：屏幕及字体是以屏幕宽度来适配的
 */

/*真实字体大小*/
static inline CGFloat tRealFontSize(CGFloat defaultSize) {
    if ([TXAdapter shareAdapter].defaultType == tCurrentType())
        return defaultSize;
    return tScreenWidth() / [TXAdapter shareAdapter].defaultScreenWidth * defaultSize;
}

/*真实长度*/
static inline CGFloat tRealLength(CGFloat defaultLength) {
    if ([TXAdapter shareAdapter].defaultType == tCurrentType())
        return defaultLength;
    return tScreenWidth()/[TXAdapter shareAdapter].defaultScreenWidth * defaultLength;
}
