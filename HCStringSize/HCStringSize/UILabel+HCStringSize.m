//
//  UILabel+HCStringSize.m
//  Traveling
//
//  Created by ZHC on 16/7/2.
//  Copyright © 2016年 ZHC. All rights reserved.
//

#import "UILabel+HCStringSize.h"

@implementation UILabel (HCStringSize)

- (CGSize)boundingRectWithSize:(CGSize)size
{
    self.numberOfLines = 0;
    
    NSDictionary *attribute = @{NSFontAttributeName: self.font};
    CGSize retSize = [self.text boundingRectWithSize:size
                                             options:\
                      NSStringDrawingTruncatesLastVisibleLine |
                      NSStringDrawingUsesLineFragmentOrigin |
                      NSStringDrawingUsesFontLeading
                                          attributes:attribute
                                             context:nil].size;
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, retSize.width, retSize.height);
    
    return retSize;
}



@end
