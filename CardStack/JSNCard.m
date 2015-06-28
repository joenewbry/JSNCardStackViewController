//
//  JSNCard.m
//  CardStack
//
//  Created by Joe Newbry on 6/28/15.
//  Copyright (c) 2015 Joe Newbry. All rights reserved.
//

#import "JSNCard.h"

@implementation JSNCard

- (instancetype)init
{
    NSAssert(NO, @"%s is not a valid intializer for %@.", __PRETTY_FUNCTION__, [self class]);
    return nil;
}

- (instancetype)initWithCardId:(NSString *)cardId
                       message:(NSString *)message
                      senderId:(NSString *)sender
                      fullName:(NSString *)fullName
                      jobTitle:(NSString *)jobTitle
                  distanceAway:(NSString *)distanceAway
                  profileImage:(UIImage *)profileImage
{
    NSParameterAssert(cardId != nil);
    NSParameterAssert(message != nil);
    NSParameterAssert(sender != nil);
    NSParameterAssert(fullName != nil);
    NSParameterAssert(jobTitle != nil);
    NSParameterAssert(distanceAway != nil);
    NSParameterAssert(profileImage != nil);

    self = [super init];
    if (self) {
        _cardId = cardId;
        _message = message;
        _senderId = sender;
        _fullName = fullName;
        _distanceAway = distanceAway;
        _profileImage = profileImage;
    }

    return self;
}

@end
