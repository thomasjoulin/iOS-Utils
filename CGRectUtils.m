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

@end
