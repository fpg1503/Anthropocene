//
//  NSString+FullRange.m
//
//
//  Created by Francesco Perrotti-Garcia on 2/9/15.
//
//

#import "NSString+FullRange.h"

@implementation NSString (FullRange)

- (NSRange)fullRange {
    return (NSRange){0, [self length]};
}

@end
