//
//  ExtendNSString.h
//  ShadowsocksX
//
//  Created by Yangfei Cheung on 10/13/17.
//  Copyright © 2017 Sednax. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Utilities)

- (int) indexOf:(NSString *)text;
- (bool) containsString: (NSString*) substring;
- (NSString*) simpleEncrypt;
- (NSString*) simpleDecrypt;
- (NSString*) encryptWithBase64;
- (NSString*) decryptFromBase64;
@end
