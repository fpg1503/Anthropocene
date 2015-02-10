//
//  main.m
//  Anthropocene Example
//
//  Created by Francesco Perrotti-Garcia on 2/9/15.
//  Copyright (c) 2015 Francesco Perrotti-Garcia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDateComponents+Anthropocene.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSLog(@"Components: %@", [NSDateComponents componentsFromHumanReadableString:@"3day 9     years 4 seconds -5 minute 4 years 4 years -3seconds"]);
    }
    return 0;
}
