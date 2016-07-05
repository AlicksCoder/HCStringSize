# HCStringSize
轻松搞定 Label 的文字高度自适应。一行代码

```

/* 一句代码自动换行，自动调整高度 */
[label boundingRectWithSize:CGSizeMake(label.bounds.size.width, 0)];



/**
*  调整Label中文字的高度大小，自动换行。先配置好label 的文字内容、字体大小等属性，最后执行此方法。
*
*  @param size 根据获取到的字符串以及字体计算label需要的size，一般传入 CGSizeMake(width, 0)，width为label的固定宽度，0 表示无限
*
*  @return CGSize，是label文字的size。一般使用，size。当方法调用完成之后，会自动改变label的高度。
*/
- (CGSize)boundingRectWithSize:(CGSize)size;

``
<br/>
[轻量级，获取位置信息，城市，经纬度，错误，一个Block解决](https://github.com/AlicksCoder/HCLocationManager)