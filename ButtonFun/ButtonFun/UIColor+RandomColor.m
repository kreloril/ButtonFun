//
//  UIColor+RandomColor.m
//  ButtonFun
//
//  Created by John Mulvey on 7/9/15.
//  Copyright (c) 2015 espn. All rights reserved.
//

#define RANDOM_COLOR_MACRO (float)((rand() % 255)/ 255.0f )

#import "UIColor+RandomColor.h"

@implementation UIColor (RandomColor)
+(UIColor*)randomColor {
    return [[UIColor alloc] initWithRed:RANDOM_COLOR_MACRO green:RANDOM_COLOR_MACRO blue:RANDOM_COLOR_MACRO alpha:1.0];
}
@end
