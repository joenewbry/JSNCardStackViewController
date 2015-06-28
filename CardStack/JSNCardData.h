//
//  JSNCardData.h
//  CardStack
//
//  Created by Joe Newbry on 6/28/15.
//  Copyright (c) 2015 Joe Newbry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSNCardStackCollectionViewDataSource.h"

@protocol JSNCardData <NSObject>

- (NSString *)cardId;
- (NSString *)message;
- (NSString *)fullName;
- (NSString *)jobTitle;
- (UIImage *)profileImage;
- (NSString *)distanceAway;
@end
