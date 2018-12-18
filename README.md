# XYAutoScrollLabel
### 一、集成方法

1. Cocoapods方式集成: `pod 'XYAutoScrollLabel'`
   使用时导入头文件 `#import <XYAutoScrollLabel/XYAutoScrollLabel.h>` 

2. 手动下载集成: 将XYAutoScrollLabel文件夹，导入你的工程
   使用时导入头文件：`#import "XYAutoScrollLabel.h"`

### 二、使用方法
``` 
XYAutoScrollLabel *titleNav = [[XYAutoScrollLabel alloc] init];
self.titleNav = titleNav;
titleNav.text = @"导航自然title";
titleNav.textColor = [UIColor blackColor];
self.navigationItem.titleView = titleNav;


XYAutoScrollLabel *titleLabel = [[XYAutoScrollLabel alloc] initWithFrame:CGRectMake(30, 100, 300, 40)];
self.titleLabel = titleLabel;
titleLabel.textColor = [UIColor blackColor];
titleLabel.text = @"label自然title";
[self.view addSubview:self.titleLabel];
```
### 请参考demo
