//
//  ExtendNSString.m
//  ShadowsocksX
//
//  Created by Yangfei Cheung on 10/13/17.
//  Copyright © 2017 Sednax. All rights reserved.
//

#import "NSString+Utilities.h"

@implementation NSString (util)

- (int) indexOf:(NSString *)text {
    NSRange range = [self rangeOfString:text];
    if ( range.length > 0 ) {
        return (int)range.location;
    } else {
        return -1;
    }
}

- (bool) containsString: (NSString*) substring
{
    NSRange range = [self rangeOfString : substring];
    bool found = ( range.location != NSNotFound );
    return found;
}

- (NSString*)encryptWithBase64
{
    NSData *queryData = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [queryData base64EncodedStringWithOptions:0];
}

- (NSString*)decryptFromBase64
{
    NSData *decodedData = [[[NSData alloc] initWithBase64EncodedString:self options:NSDataBase64DecodingIgnoreUnknownCharacters] autorelease];
    return [[[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding] autorelease];
}

- (NSString*)simpleEncrypt
{
    NSMutableString *query = [[[NSMutableString alloc] init] autorelease];
    const char* queryChars = [self UTF8String];
    for(int i = 0; i < strlen(queryChars); i++)
    {
        char c = queryChars[i];
        c = c + 1;
        [query appendFormat:@"%c",c];
    }
    return [query encryptWithBase64];
}

- (NSString*)simpleDecrypt
{
    NSString *str = [self decryptFromBase64];
    NSMutableString *query = [[[NSMutableString alloc] init] autorelease];
    const char* queryChars = [str UTF8String];
    for(int i = 0; i < strlen(queryChars); i++)
    {
        char c = queryChars[i];
        c = c - 1;
        [query appendFormat:@"%c",c];
    }
    return [NSString stringWithFormat:@"%@", query];
}

@end

