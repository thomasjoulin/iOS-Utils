//
//  NSString+Hash.h
//
//  Created by Thomas Joulin on 4/27/10.
//

# import <Foundation/Foundation.h>
# import <CommonCrypto/CommonDigest.h>

@interface NSString (HashExtensions)

- (NSString *)sha1Value;

@end
