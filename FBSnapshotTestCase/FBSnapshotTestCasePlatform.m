/*
 *  Copyright (c) 2015, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the BSD-style license found in the
 *  LICENSE file in the root directory of this source tree. An additional grant
 *  of patent rights can be found in the PATENTS file in the same directory.
 *
 */

#import <FBSnapshotTestCase/FBSnapshotTestCasePlatform.h>

BOOL FBSnapshotTestCaseIs64Bit(void)
{
#if __LP64__
  return YES;
#else
  return NO;
#endif
}

NSOrderedSet *FBSnapshotTestCaseDefaultSuffixes(void)
{
  NSMutableOrderedSet *suffixesSet = [[NSMutableOrderedSet alloc] init];
  CGFloat screenWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  NSString *suffix = [NSString stringWithFormat:@"_%.0f_iOS_%ld", screenWidth, [[[UIDevice currentDevice] systemVersion] integerValue]];
  [suffixesSet addObject:suffix]; 
  return [suffixesSet copy];
}
