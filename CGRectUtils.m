//
//  CGRectUtils.m
//
//  Created by Thomas Joulin on 2/15/11.
//

#import "CGRectUtils.h"

@implementation CGRectUtils

+ (CGRect)frame:(CGRect)frame withOrigin:(CGPoint)origin
{
	CGRect	newFrame = frame;
	
	newFrame.origin = origin;
	
	return newFrame;
}

+ (CGRect)frame:(CGRect)frame withSize:(CGSize)size
{
	CGRect	newFrame = frame;
	
	newFrame.size = size;
	
	return newFrame;
}

+ (CGRect)frame:(CGRect)frame withWidth:(CGFloat)width
{
	CGRect	newFrame = frame;
	
	newFrame.size.width = width;
	
	return newFrame;
}

+ (CGRect)frame:(CGRect)frame withHeight:(CGFloat)height
{
	CGRect	newFrame = frame;
	
	newFrame.size.height = height;
	
	return newFrame;
}

+ (CGRect)frame:(CGRect)frame withX:(CGFloat)x
{
	CGRect	newFrame = frame;
	
	newFrame.origin.x = x;
	
	return newFrame;
}

+ (CGRect)frame:(CGRect)frame withY:(CGFloat)y
{
	CGRect	newFrame = frame;
	
	newFrame.origin.y = y;
	
	return newFrame;
}

+ (CGRect)frame:(CGRect)frame withIncOrigin:(CGPoint)increment
{
	CGRect	newFrame = frame;
	
	newFrame.origin.x += increment.x;
	newFrame.origin.y += increment.y;
	
	return newFrame;	
}

+ (CGRect)frame:(CGRect)frame withIncSize:(CGSize)increment
{
	CGRect	newFrame = frame;
	
	newFrame.size.width += increment.width;
	newFrame.size.width += increment.height;
	
	return newFrame;	
}

+ (CGRect)frame:(CGRect)frame withIncX:(CGFloat)increment
{
	CGRect	newFrame = frame;
	
	newFrame.origin.x += increment;
	
	return newFrame;	
}

+ (CGRect)frame:(CGRect)frame withIncY:(CGFloat)increment
{
	CGRect	newFrame = frame;
	
	newFrame.origin.y += increment;
	
	return newFrame;	
}

+ (CGRect)frame:(CGRect)frame withIncWidth:(CGFloat)increment
{
	CGRect	newFrame = frame;
	
	newFrame.size.width += increment;
	
	return newFrame;	
}

+ (CGRect)frame:(CGRect)frame withIncHeight:(CGFloat)increment
{
	CGRect	newFrame = frame;
	
	newFrame.size.height += increment;
	
	return newFrame;	
}


@end
