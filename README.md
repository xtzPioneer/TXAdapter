# TXAdapter

[![CI Status](https://img.shields.io/travis/张雄/TXAdapter.svg?style=flat)](https://travis-ci.org/张雄/TXAdapter)
[![Version](https://img.shields.io/cocoapods/v/TXAdapter.svg?style=flat)](https://cocoapods.org/pods/TXAdapter)
[![License](https://img.shields.io/cocoapods/l/TXAdapter.svg?style=flat)](https://cocoapods.org/pods/TXAdapter)
[![Platform](https://img.shields.io/cocoapods/p/TXAdapter.svg?style=flat)](https://cocoapods.org/pods/TXAdapter)

## 介绍

* iOS轻量级屏幕以及字体适配，支持iPhoneX、XS、XSMax、XR、11等机型适配。
* 使用方便、操作简单、集成快捷等优点

## 要求
* 需要在iOS8以上使用
## 安装

TXAdapter is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TXAdapter'
```
## 使用姿势
```objc
- (void)viewDidLoad{
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
        case TXAdapterPhoneType_iPhone6_6S_7_8:
            NSLog(@"TXAdapterPhoneType_iPhone6_6S_7_8");
            break;
        case TXAdapterPhoneType_iPhone6Plus_6SPlus_7Plus_8Plus:
            NSLog(@"TXAdapterPhoneType_iPhone6Plus_6SPlus_7Plus_8Plus");
            break;
        case TXAdapterPhoneType_iPhoneX_XS_11Pro:
            NSLog(@"TXAdapterPhoneType_iPhoneX_XS_11Pro");
            break;
        case TXAdapterPhoneType_iPhoneXSMax_XR_11_11ProMax:
            NSLog(@"TXAdapterPhoneType_iPhoneXSMax_XR_11_11ProMax");
            break;
        case TXAdapterPhoneTypeOther:
            break;
        default:
            break;
    }
	// Do any additional setup after loading the view, typically from a nib.
}
```

## 作者

张雄, xtz_pioneer@163.com

## 许可

TXAdapter is available under the MIT license. See the LICENSE file for more info.
