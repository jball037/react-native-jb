/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <React/RCTTextSelection.h>

@implementation RCTTextSelection

- (instancetype)initWithStart:(NSInteger)start end:(NSInteger)end cursorx:(NSNumber)cursorx cursory:(NSNumber)cursory
{
  if (self = [super init]) {
    _start = start;
    _end = end;
    _cursorx = cursorx;
    _cursory = cursory;
  }
  return self;
}

@end

@implementation RCTConvert (RCTTextSelection)

+ (RCTTextSelection *)RCTTextSelection:(id)json
{
  if ([json isKindOfClass:[NSDictionary class]]) {
    NSInteger start = [self NSInteger:json[@"start"]];
    NSInteger end = [self NSInteger:json[@"end"]];
    NSNumber cursorx = [self NSNumber:json[@"cursorx"]];
    NSNumber cursory = [self NSNumber:json[@"cursory"]];
    return [[RCTTextSelection alloc] initWithStart:start end:end cursorx:cursorx cursory:cursory];
  }

  return nil;
}

@end
