/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <React/RCTConvert.h>

/**
 * Object containing information about a TextInput's selection.
 */
@interface RCTTextSelection : NSObject

@property (nonatomic, assign, readonly) NSInteger start;
@property (nonatomic, assign, readonly) NSInteger end;
@property (nonatomic, assign, readonly) NSNumber cursorx;
@property (nonatomic, assign, readonly) NSNumber cursory;

- (instancetype)initWithStart:(NSInteger)start end:(NSInteger)end cursorx:(NSNumber)cursorx cursory:(NSNumber)cursory;

@end

@interface RCTConvert (RCTTextSelection)

+ (RCTTextSelection *)RCTTextSelection:(id)json;

@end
