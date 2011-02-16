//
//  UIImage+Extensions.m
//  PinchPhotos
//
//  Created by Thomas Joulin on 2/16/11.
//  Copyright 2011 MyStudioFactory. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "UIImage+Extensions.h"

@implementation UIImage (Extensions)

+ (void)beginImageContextWithSize:(CGSize)size
{
    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)])
	{
        if ([[UIScreen mainScreen] scale] == 2.0)
		{
            UIGraphicsBeginImageContextWithOptions(size, YES, 2.0);
        }
		else
		{
            UIGraphicsBeginImageContext(size);
        }
	}
	else
	{
        UIGraphicsBeginImageContext(size);
    }
}

+ (UIImage *)imageFromView:(UIView*)view
{
    [self beginImageContextWithSize:[view bounds].size];
    BOOL hidden = [view isHidden];
    [view setHidden:NO];
    [[view layer] renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [view setHidden:hidden];
	
    return image;
}

+ (UIImage *)imageFromView:(UIView*)view scaledToSize:(CGSize)newSize
{
    UIImage *image = [self imageFromView:view];
	
    if ([view bounds].size.width != newSize.width || [view bounds].size.height != newSize.height)
	{
        image = [self imageWithImage:image scaledToSize:newSize];
    }
	
    return image;
}

+ (UIImage *)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize
{
    [self beginImageContextWithSize:newSize];
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
	
    return newImage;
}

@end