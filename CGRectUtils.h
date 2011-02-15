//
//  CGRectUtils.h
//
//  Created by Thomas Joulin on 2/15/11.
//

@interface CGRectUtils : NSObject

// Update some elements of a frame
+ (CGRect)frame:(CGRect)frame withOrigin:(CGPoint)origin;
+ (CGRect)frame:(CGRect)frame withSize:(CGSize)size;
+ (CGRect)frame:(CGRect)frame withWidth:(CGFloat)width;
+ (CGRect)frame:(CGRect)frame withHeight:(CGFloat)height;
+ (CGRect)frame:(CGRect)frame withX:(CGFloat)x;
+ (CGRect)frame:(CGRect)frame withY:(CGFloat)y;

// Increment some elements of a frame
+ (CGRect)frame:(CGRect)frame withIncOrigin:(CGPoint)increment;
+ (CGRect)frame:(CGRect)frame withIncSize:(CGSize)increment;
+ (CGRect)frame:(CGRect)frame withIncX:(CGFloat)increment;
+ (CGRect)frame:(CGRect)frame withIncY:(CGFloat)increment;
+ (CGRect)frame:(CGRect)frame withIncWidth:(CGFloat)increment;
+ (CGRect)frame:(CGRect)frame withIncHeight:(CGFloat)increment;


@end
