
# 由Single View Application项目删除storyboard生成纯代码EmptyProject模板 

- 1.从项目中删除LaunchScreen.storyboard和Main.storyboard:  
    从Info.plist中删除Launch screen interface file base name和Main storyboard file base name。
	* 对应Genenal | App Icons and Launch Images | Launch Screen File  
	* 对应Genenal | Deployment Info|Main Interface  
- 2.删掉Launch Screen File之后，启动屏幕大小总是320x480。  
**`上下有黑条，且点击黑条部分报错：`**  
  - unexpected nil window in _UIApplicationHandleEventFromQueueEvent, 
  - _windowServerHitTestWindow: <UIClassicWindow: 0x7fc798411d80; frame = (0 0; 375 667); userInteractionEnabled = NO; 

  **`原因:`**  
	由于5/5s上市时，需要兼容之前版本的App，同时要减少适配的开发成本。最后就出了唯一的一个判断标准：如果有相应设备尺寸的开机图，系统就当该App针对新设备做过适配，否则就按照320x480来计算，然后在iPhone5/6的模拟器屏幕上下自动补黑条。

  **`解决方案:`**  
向工程同名目录添加启动图片：  
	- iPhone4/4s： Default@2x.png（640*960）  
	- iPhone5/5s： Default-568h@2x.png（640*1136）  
	- iPhone6：    Default-375w-667h@2x.png（750*1334）  
	- iPhone6+：   Default-414w-736h@3x.png（1242*2208）  

- **`参考：`**  
 [《从项目中删除storyboards》](http://www.cocoachina.com/ios/20141104/10127.html)  
[《iOS8 launch image的设置方法》](http://blog.csdn.net/luckilyyu/article/details/39549587)  
[《iPhone6(+)适配LaunchImage》](http://www.th7.cn/Program/IOS/201410/294620.shtml)  
[《增加Default-568h@2x.png支持iPhone5》](http://blog.csdn.net/heavywater/article/details/8699423)  
[《Xcode6在模拟器iPhone5/iOS7的版面上下黑边》](http://www.52ij.com/jishu/ios/84256.html)  

