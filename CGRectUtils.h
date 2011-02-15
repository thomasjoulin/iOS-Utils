//
//  CGRectUtils.h
//
//  Created by Thomas Joulin on 2/15/11.
//

@interface CGRectUtils : NSObject

+ (CGRect)frame:(CGRect)frame withOrigin:(CGPoint)origin;
+ (CGRect)frame:(CGRect)frame withSize:(CGSize)size;
+ (CGRect)frame:(CGRect)frame withWidth:(CGFloat)width;
+ (CGRect)frame:(CGRect)frame withHeight:(CGFloat)height;
+ (CGRect)frame:(CGRect)frame withX:(CGFloat)x;
+ (CGRect)frame:(CGRect)frame withY:(CGFloat)y;

@end
