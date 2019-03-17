/*
 JHMatchInfoRecordColorTransformer.m
 Copyright (C) 2012 Joe Hsieh

 Permission is hereby granted, free of charge, to any person obtaining
 a copy of this software and associated documentation files (the
 "Software"), to deal in the Software without restriction, including
 without limitation the rights to use, copy, modify, merge, publish,
 distribute, sublicense, and/or sell copies of the Software, and to
 permit persons to whom the Software is furnished to do so, subject to
 the following conditions:

 The above copyright notice and this permission notice shall be
 included in all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
 BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
 ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
*/

#import "JHMatchInfoRecordColorTransformer.h"
#import "JHMatchInfo.h"

@implementation JHMatchInfoRecordColorTransformer

+ (Class)transformedValueClass
{
	return [NSColor class];
}

+ (BOOL)allowsReverseTransformation
{
	return YES;
}

- (id)transformedValue:(id)value
{
	NSInteger state = [value integerValue];

	switch (state) {
		case unTranslated:
			return [NSColor systemBlueColor];
		case notExist:
			return [NSColor systemRedColor];
		case translated:
			return [NSColor controlTextColor];
		default:
			break;
	}
	return nil;
}

- (id)reverseTransformedValue:(id)value
{
	if (value == [NSColor systemBlueColor]) {
		return @(unTranslated);
	}
	else if (value == [NSColor systemRedColor]) {
		return @(notExist);
	}
	else if (value == [NSColor controlTextColor]) {
		return @(translated);
	}
	return nil;
}
@end
