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

/*
 UIImage+ProportionalFill
 (c) Matt Gemmell
 http://mattgemmell.com/2010/07/05/mgimageutilities/
 */
typedef enum
{
    MGImageResizeCrop,	// analogous to UIViewContentModeScaleAspectFill, i.e. "best fit" with no space around.
    MGImageResizeCropStart,
    MGImageResizeCropEnd,
    MGImageResizeScale	// analogous to UIViewContentModeScaleAspectFit, i.e. scale down to fit, leaving space around if necessary.
} MGImageResizingMethod;

- (UIImage *)imageToFitSize:(CGSize)size method:(MGImageResizingMethod)resizeMethod;
- (UIImage *)imageCroppedToFitSize:(CGSize)size; // uses MGImageResizeCrop
- (UIImage *)imageScaledToFitSize:(CGSize)size; // uses MGImageResizeScale

@end
