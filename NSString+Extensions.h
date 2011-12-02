//
//  NSString+Extensions.h
//
//  Created by Thomas Joulin on 10/17/11.
//

#import <Foundation/Foundation.h>

@interface NSString (Extensions)

// Test Strings
- (BOOL)isValidEmail;
- (BOOL)isNeitherNullNorEmpty;
- (BOOL)startsWith:(NSString *)s;
- (BOOL)containsString:(NSString *)aString;

// Convert Strings
+ (NSString *)stringFromBool:(BOOL)boolean;

// Compare Strings
- (BOOL)equals:(NSString *)s;

// Work with date strings
- (NSString *)formattedStringUsingFormat:(NSString *)dateFormat;
- (NSDate *)dateValueWithFormat:(NSString *)format;
- (NSDate *)dateValue;

// Manipulate strings
- (NSString *)substringFrom:(NSInteger)a to:(NSInteger)b;
- (NSInteger)indexOf:(NSString *)substring from:(NSInteger)starts;
- (NSString *)trim;

// URL strings
- (NSString *)urlEncode;

@end
