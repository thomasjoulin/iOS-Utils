//
//  CGAffineTransformUtils.m
//
//  Created by Thomas Joulin on 2/16/11.
//
//  From http://iphonedevelopment.blogspot.com/2011/02/couple-cgaffinetransform-goodies.html
//

#import "CGAffineTransformUtils.h"

extern CGAffineTransform CGAffineTransformMakeRotateTranslate(CGFloat angle, CGFloat dx, CGFloat dy)
{
    return CGAffineTransformMake(cosf(angle), sinf(angle), -sinf(angle), cosf(angle), dx, dy);
}

extern CGAffineTransform CGAffineTransformMakeScaleTranslate(CGFloat sx, CGFloat sy, CGFloat dx, CGFloat dy)
{
    return CGAffineTransformMake(sx, 0.f, 0.f, sy, dx, dy);
}
