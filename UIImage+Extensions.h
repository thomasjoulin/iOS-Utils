//
//  UIImage+Extensions.h
//
//  Created by Thomas Joulin on 2/16/11.
//

#import <Foundation/Foundation.h>


@interface UIImage (Extensions)

// http://www.icab.de/blog/2010/10/01/scaling-images-and-creating-thumbnails-from-uiviews
+ (void)beginImageContextWithSize:(CGSize)size;
+ (UIImage *)imageFromView:(UIView *)view;
+ (UIImage *)imageFromView:(UIView *)view scaledToSize:(CGSize)newSize;
+ (UIImage *)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize;

@end
