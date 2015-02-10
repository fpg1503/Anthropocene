//
//  NSDateComponents+Anthropocene.h
//
//
//  Created by Francesco Perrotti-Garcia on 2/9/15.
//
//

#import <Foundation/Foundation.h>

@interface NSDateComponents (Anthropocene)

/**
 Tokens accepted:
 
 year(s),
 month(s),
 day(s),
 hour(s),
 minute(s),
 second(s),
 nanosecond(s)
 
 
 @brief Converts a humand readable string with date components into @c NSDateComponents
 
 @param string A human readable string with date components
 
 @return A new NSDateComponents object representing the components described in the string. Returns @c nil if the receiver cannot convert the string given in @p string into date components.
 */
+ (NSDateComponents *)componentsFromHumanReadableString:(NSString *)string;

@end
