# TXAdapter
* iOS屏幕以及字体适配，支持iPhone8等机型适配。

### cocoapods集成
* pod 'TXAdapter', '~> 0.0.1'
### 代码片段

```objc
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

```
### 使用方法
* 导入头文件 <TXAdapter.h>  直接使用tRealLength()、tRealFontSize()...即可
```objc
UIView * view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, tRealLength(50), tRealLength(50))];
```
