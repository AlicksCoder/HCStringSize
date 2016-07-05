//
//  UILabel+HCStringSize.h
//  Traveling
//
//  Created by ZHC on 16/7/2.
//  Copyright © 2016年 ZHC. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  计算Label的字符串高度
 */

@interface UILabel (HCStringSize)

/**
 *  调整Label中文字的高度大小，自动换行。先配置好label 的文字内容、字体大小等属性，最后执行此方法。
 *
 *  @param size 根据获取到的字符串以及字体计算label需要的size，一般传入 CGSizeMake(width, 0)，width为label的固定宽度，0 表示无限
 *
 *  @return CGSize，是label文字的size。一般使用，size。当方法调用完成之后，会自动改变label的高度。
 */
- (CGSize)boundingRectWithSize:(CGSize)size;
@end
