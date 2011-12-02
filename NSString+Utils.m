//
//  NSString+Utils.m
//
//  Created by Thomas Joulin on 10/17/11.
//

#import "NSString+Utils.h"

@implementation NSString (UtilsAdditions)

- (BOOL)isNeitherNullNorEmpty
{
    return self && self.length;
}

- (BOOL)isValidEmail
{
    NSString *emailRegex =
    @"(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}"
    @"~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\"
    @"x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-"
    @"z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5"
    @"]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-"
    @"9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21"
    @"-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    
    return [emailTest evaluateWithObject:self];
}

- (BOOL)equals:(NSString *)s
{
    return [self compare:s] == NSOrderedSame;
}

+ (NSString *)stringFromBool:(BOOL)boolean
{
    return boolean == TRUE ? @"TRUE" : @"FALSE";
}

- (NSString *)formattedStringUsingFormat:(NSString *)dateFormat
{
    NSString        *ret;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSCalendar      *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    [formatter setCalendar:cal];
    [formatter setLocale:[NSLocale currentLocale]];
    [formatter setDateFormat:dateFormat];

    ret = [formatter stringFromDate:[self dateValue]];

    [formatter release];
    [cal release];

    return ret;
}

- (NSDate *)dateValueWithFormat:(NSString *)format
{
    NSDate          *date;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSCalendar      *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    [formatter setDateFormat:format];
    [formatter setCalendar:cal];
    [formatter setLocale:[NSLocale currentLocale]];    
    
    date = [formatter dateFromString:self];
    
    [formatter release];
    [cal release];
    
    return date;
}

- (NSDate *)dateValue
{
    return [self dateValueWithFormat:@"yyyy-MM-dd"];
}

- (NSString *)substringFrom:(NSInteger)a to:(NSInteger)b
{
	NSRange r;

	r.location = a;
	r.length = b - a;

	return [self substringWithRange:r];
}

- (NSInteger)indexOf:(NSString*)substring from:(NSInteger)starts
{
	NSRange r;
    NSRange index;
    
	r.location = starts;
	r.length = [self length] - r.location;
	
	index = [self rangeOfString:substring options:NSLiteralSearch range:r];
	if (index.location == NSNotFound)
    {
		return -1;
	}

	return index.location + index.length;
}

- (NSString *)trim
{
	return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (BOOL)startsWith:(NSString *)s
{
	if ([self length] < [s length])
    {
        return NO;
    }

	return [s isEqualToString:[self substringFrom:0 to:[s length]]];
}

- (BOOL)containsString:(NSString *)aString
{
	NSRange range = [[self lowercaseString] rangeOfString:[aString lowercaseString]];

	return range.location != NSNotFound;
}

- (NSString *)urlEncode
{
	NSString* encodedString = (NSString *)CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)self, NULL, (CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8);
	return [encodedString autorelease];
}


@end
