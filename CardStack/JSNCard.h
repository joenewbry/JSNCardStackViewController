//
//  JSNCard.h
//  CardStack
//
//  Created by Joe Newbry on 6/28/15.
//  Copyright (c) 2015 Joe Newbry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSNCardData.h"

@interface JSNCard : NSObject <JSNCardData>

@property (strong, nonatomic) NSString *cardId;
@property (strong, nonatomic) NSString *message;
@property (strong, nonatomic) NSString *senderId;
@property (strong, nonatomic) NSString *fullName;
@property (strong, nonatomic) NSString *jobTitle;
@property (strong, nonatomic) NSString *distanceAway;
@property (strong, nonatomic) UIImage *profileImage;

- (instancetype)initWithCardId:(NSString *)cardId
                       message:(NSString *)message
                      senderId:(NSString *)sender
                      fullName:(NSString *)fullName
                      jobTitle:(NSString *)jobTitle
                  distanceAway:(NSString *)distanceAway
                  profileImage:(UIImage *)profileImage;

@end
