//
//  NSString+Hash.h
//
//  Created by Thomas Joulin on 4/27/10.
//

# import "NSString+Hash.h"
# import "NSData+hexadecimalString.h"

@implementation NSString (HashExtensions)

- (NSString *)sha1Value
{
	const void		*bytes;
	unsigned char hashBytes[CC_SHA1_DIGEST_LENGTH];
                                                                                            
	bytes = [[self dataUsingEncoding:NSASCIIStringEncoding] bytes];
	CC_SHA1(bytes, [self length], hashBytes);

	return [[NSData dataWithBytes:hashBytes length:CC_SHA1_DIGEST_LENGTH] hexadecimalString];
}

@end
