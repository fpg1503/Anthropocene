//
//  NSDateComponents+Anthropocene.m
//
//
//  Created by Francesco Perrotti-Garcia on 2/9/15.
//
//

#import "NSDateComponents+Anthropocene.h"
#import "NSString+FullRange.h"
#import "Constants.h"

@implementation NSDateComponents (Anthropocene)

+ (NSDateComponents *)componentsFromHumanReadableString:(NSString *)string {

    NSArray *tokens = @[ kAYear,
                         kAMonth,
                         kADay,
                         kAHour,
                         kAMinute,
                         kASecond,
                         kANanoSecond ];

    NSMutableDictionary *values = [NSMutableDictionary dictionaryWithCapacity:tokens.count];

    //Parsing the string
    for (NSString *token in tokens) {
        NSError *error;
        NSString *regExPattern = [NSString stringWithFormat:@"[-+]?\\d+(?=\\s*%@)", token];
        NSRegularExpression *extractionRegEx = [NSRegularExpression regularExpressionWithPattern:regExPattern options:0 error:&error];

        NSArray *matches = [extractionRegEx matchesInString:string options:0 range:[string fullRange]];

        if (!error) {
            NSInteger accumulator = 0;
            for (NSTextCheckingResult *match in matches) {
                accumulator += [[string substringWithRange:match.range] integerValue];
            }
            values[token] = @(accumulator);
        } else {
            return nil;
        }
    }

    //Constructing the object
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];

    dateComponents.year       = [values[kAYear] integerValue];
    dateComponents.month      = [values[kAMonth] integerValue];
    dateComponents.day        = [values[kADay] integerValue];
    dateComponents.hour       = [values[kAHour] integerValue];
    dateComponents.minute     = [values[kAMinute] integerValue];
    dateComponents.second     = [values[kASecond] integerValue];
    dateComponents.nanosecond = [values[kANanoSecond] integerValue];

    return dateComponents;
}
@end
