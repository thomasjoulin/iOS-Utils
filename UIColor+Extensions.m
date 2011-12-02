//
// UIColor+Extensions.m
//
//
// Created by Thomas Joulin on 02/11/11.
//

#import "UIColor+Extensions.h"

@implementation UIColor (Extensions)

+ (UIColor *)colorWithHexString:(NSString *)hexString withHexAlpha:(NSString*)hexAlpha
{
    NSString *r, *g, *b;
    unsigned int colorValue;
    unsigned int alphaValue;
  
    hexString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];

    if (hexString.length == 3)
    {
        r = [hexString substringWithRange:NSMakeRange(0, 1)];
        g = [hexString substringWithRange:NSMakeRange(1, 1)];
        b = [hexString substringWithRange:NSMakeRange(2, 1)];
        hexString = [NSString stringWithFormat:@"%@%@%@%@%@%@", r,r,g,g,b,b];
    }

    [[NSScanner scannerWithString:hexString] scanHexInt:&colorValue];
    [[NSScanner scannerWithString:hexAlpha] scanHexInt:&alphaValue];

    return [UIColor colorWithRed:((float)((colorValue & 0xFF0000) >> 16))/255.0
                    green:((float)((colorValue & 0xFF00) >> 8))/255.0
                    blue:((float)(colorValue & 0xFF))/255.0 
                    alpha:((float)(alphaValue & 0xFF))/255.0 ];

}

+ (UIColor *)colorWithHexString:(NSString *)hexString 
{
	return [self colorWithHexString:hexString withHexAlpha:@"ff"];
}

@end
