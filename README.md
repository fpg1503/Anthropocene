# Anthropocene [![Build Status](https://travis-ci.org/fpg1503/Anthropocene.svg)](https://travis-ci.org/fpg1503/Anthropocene)


**A set of categories that converts human readable dates and time intervals to foundation classes.**

## Usage

``` objective-c
NSLog(@"Components: %@", [NSDateComponents componentsFromHumanReadableString:@"64 years, 32 months, 16 days, 8 hours, 4 minutes, 2 seconds, 1 nanosecond"]);
NSLog(@"Components: %@", [NSDateComponents componentsFromHumanReadableString:@"3day 9     years 4 seconds -5 minute 4 years 4 years -3seconds"]);
```

Result

```
Components:  <NSDateComponents: 0xADDRESS>
	Calendar Year: 64
	Month: 32
	Day: 16
	Hour: 8
	Minute: 4
	Second: 2
	Nanosecond: 1

Components:  <NSDateComponents: 0xADDRESS>
	Calendar Year: 17
	Month: 0
	Day: 3
	Hour: 0
	Minute: -5
	Second: 1
	Nanosecond: 0
```

## License

**Anthropocene** is available under the MIT license. See the LICENSE file for more info.