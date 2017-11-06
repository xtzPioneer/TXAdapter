# TXAdapter
* iOS屏幕以及字体适配
### Content

```objc
@interface ZYAdaptation : NSObject

CGRect AutoRect(CGFloat x,CGFloat y,CGFloat width,CGFloat height);
CGPoint AutoPoint(CGFloat x,CGFloat y);
CGSize AutoSize(CGFloat width,CGFloat height);

CGFloat AutoX(CGFloat x);
CGFloat AutoY(CGFloat y);
CGFloat AutoW(CGFloat width);
CGFloat AutoH(CGFloat height);

CGFloat AutoFont(CGFloat size);
CGFloat AutoFontSpecial(CGFloat size);
CGFloat AutoFontMultiplied(CGFloat size);

CGFloat AutoMultiplied(CGFloat number);

@end

```
