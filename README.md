# TXAdapter
* iOS屏幕以及字体适配，支持iPhone8等机型适配。

### cocoapods集成
* pod 'TXAdapter', '~> 0.0.1'
### 代码片段

```objc
/** 适配手机类型 */
typedef NS_ENUM(NSInteger,TXAdapterPhoneType) {
    /** iPhone3GS_4_4S */
    TXAdapterPhoneType_iPhone3GS_4_4S    = 0,
    /** iPhone5_5C_5S_5SE */
    TXAdapterPhoneType_iPhone5_5C_5S_5SE = 1,
    /** iPhone6_6S_7_8 */
    TXAdapterPhoneType_iPhone6_6S_7_8    = 2,
    /** iPhone6Plus_6SPlus_7Plus_8Plus */
    TXAdapterPhoneType_iPhone6Plus_6SPlus_7Plus_8Plus = 3,
    /** iPhoneX_XS */
    TXAdapterPhoneType_iPhoneX_XS        = 4,
    /** iPhoneXSMax_XR */
    TXAdapterPhoneType_iPhoneXSMax_XR    = 5,
    /** 其他 */
    TXAdapterPhoneTypeOther              = 6,
};

/** 所需适配机型-屏幕宽 */
UIKIT_EXTERN CGFloat const SCREEN_WIDTH_iPhone3GS_4_4S;
UIKIT_EXTERN CGFloat const SCREEN_WIDTH_iPhone5_5C_5S_5SE;
UIKIT_EXTERN CGFloat const SCREEN_WIDTH_iPhone6_6S_7_8;
UIKIT_EXTERN CGFloat const SCREEN_WIDTH_iPhone6Plus_6SPlus_7Plus_8Plus;
UIKIT_EXTERN CGFloat const SCREEN_WIDTH_iPhoneX_XS;
UIKIT_EXTERN CGFloat const SCREEN_WIDTH_iPhoneXSMax_XR;
/** 所需适配机型-屏幕高 */
UIKIT_EXTERN CGFloat const SCREEN_HEIGHT_iPhone3GS_4_4S;
UIKIT_EXTERN CGFloat const SCREEN_HEIGHT_iPhone5_5C_5S_5SE;
UIKIT_EXTERN CGFloat const SCREEN_HEIGHT_iPhone6_6S_7_8;
UIKIT_EXTERN CGFloat const SCREEN_HEIGHT_iPhone6Plus_6SPlus_7Plus_8Plus;
UIKIT_EXTERN CGFloat const SCREEN_HEIGHT_iPhoneX_XS;
UIKIT_EXTERN CGFloat const SCREEN_HEIGHT_iPhoneXSMax_XR;

/** 屏幕宽度 */
static inline CGFloat tScreenWidth() {
    return [UIScreen mainScreen].bounds.size.width;
}
/** 幕高度 */
static inline CGFloat tScreenHeight() {
    return [UIScreen mainScreen].bounds.size.height;
}

/** 当前屏幕类型 */
static inline TXAdapterPhoneType tCurrentType() {
    if (tScreenHeight() == SCREEN_HEIGHT_iPhone3GS_4_4S) return TXAdapterPhoneType_iPhone3GS_4_4S;
    if (tScreenHeight() == SCREEN_HEIGHT_iPhone5_5C_5S_5SE) return TXAdapterPhoneType_iPhone5_5C_5S_5SE;
    if (tScreenHeight() == SCREEN_HEIGHT_iPhone6_6S_7_8) return TXAdapterPhoneType_iPhone6_6S_7_8;
    if (tScreenHeight() == SCREEN_HEIGHT_iPhone6Plus_6SPlus_7Plus_8Plus) return TXAdapterPhoneType_iPhone6Plus_6SPlus_7Plus_8Plus;
    if (tScreenHeight() == SCREEN_HEIGHT_iPhoneX_XS) return TXAdapterPhoneType_iPhoneX_XS;
    if (tScreenHeight() == SCREEN_HEIGHT_iPhoneXSMax_XR) return TXAdapterPhoneType_iPhoneXSMax_XR;
    return TXAdapterPhoneTypeOther;
}

/** 屏幕适配 */
@interface TXAdapter : NSObject
/** 屏幕默认类型 默认为TXAdapterPhoneType_iPhone6_6S_7_8 */
@property(nonatomic)TXAdapterPhoneType defaultType;
/** 屏幕宽度 */
@property(nonatomic,readonly)CGFloat defaultScreenWidth;
/** 屏幕高度 */
@property(nonatomic,readonly)CGFloat defaultScreenHeight;
/** 共享适配器 */
+ (instancetype)shareAdapter;
@end

/**
 注：屏幕及字体是以屏幕宽度来适配的
 */

/** 真实字体大小 */
static inline CGFloat tRealFontSize(CGFloat defaultSize) {
    if ([TXAdapter shareAdapter].defaultType == tCurrentType())
        return defaultSize;
    return tScreenWidth() / [TXAdapter shareAdapter].defaultScreenWidth * defaultSize;
}

/** 真实长度 */
static inline CGFloat tRealLength(CGFloat defaultLength) {
    if ([TXAdapter shareAdapter].defaultType == tCurrentType())
        return defaultLength;
    return tScreenWidth()/[TXAdapter shareAdapter].defaultScreenWidth * defaultLength;
}
```
### 使用方法
* 导入头文件 <TXAdapter.h>  直接使用tRealLength()、tRealFontSize()...即可
```objc
- (void)viewDidLoad {
    [super viewDidLoad];
    UIView * view=[[UIView alloc]initWithFrame:CGRectMake(0, tRealLength(80), tRealLength(50), tRealLength(50))];
    NSLog(@"真实Y：%f",tRealLength(80));
    NSLog(@"真实W_H：%f",tRealLength(50));
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
        case TXAdapterPhoneType_iPhoneX_XS:
            NSLog(@"TXAdapterPhoneType_iPhoneX_XS");
            break;
        case TXAdapterPhoneType_iPhoneXSMax_XR:
            NSLog(@"TXAdapterPhoneType_iPhoneXSMax_XR");
            break;
        case TXAdapterPhoneTypeOther:
            break;
        default:
            break;
    }
}

```
### 运行结果
```objc
2019-01-08 14:50:07.804936+0800 TXAdapterDemo[367:299716] 真实Y：88.320000
2019-01-08 14:50:07.805175+0800 TXAdapterDemo[367:299716] 真实W_H：55.200000
2019-01-08 14:50:07.805400+0800 TXAdapterDemo[367:299716] 当前设备
2019-01-08 14:50:07.805509+0800 TXAdapterDemo[367:299716] TXAdapterPhoneType_iPhoneXSMax_XR
```
