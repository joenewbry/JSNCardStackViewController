//
//  DemoModelData.m
//  CardStack
//
//  Created by Joe Newbry on 6/28/15.
//  Copyright (c) 2015 Joe Newbry. All rights reserved.
//

#import "DemoModelData.h"
#import "JSNCard.h"

@implementation DemoModelData

- (instancetype)init
{
    self = [super init];

    if (self) {
        [self loadFakeCards];
    }

    return self;
}

- (void)loadFakeCards
{
    self.cards    = [[NSMutableArray alloc] initWithObjects:
                     [[JSNCard alloc] initWithCardId:@"1" message:@"Testing message" senderId:@"1" fullName:@"Joe Newbry" jobTitle:@"Working and twerking" distanceAway:@"1.2 miles away" profileImage:[UIImage imageNamed:@"IronMan"]],
                     [[JSNCard alloc] initWithCardId:@"1" message:@"Testing message" senderId:@"1" fullName:@"Joe Newbry" jobTitle:@"Working and twerking" distanceAway:@"1.2 miles away" profileImage:[UIImage imageNamed:@"IronMan"]],
                     [[JSNCard alloc] initWithCardId:@"1" message:@"Testing message" senderId:@"1" fullName:@"Joe Newbry" jobTitle:@"Working and twerking" distanceAway:@"1.2 miles away" profileImage:[UIImage imageNamed:@"IronMan"]],
                     [[JSNCard alloc] initWithCardId:@"1" message:@"Testing message" senderId:@"1" fullName:@"Joe Newbry" jobTitle:@"Working and twerking" distanceAway:@"1.2 miles away" profileImage:[UIImage imageNamed:@"IronMan"]],
                     [[JSNCard alloc] initWithCardId:@"1" message:@"Testing message" senderId:@"1" fullName:@"Joe Newbry" jobTitle:@"Working and twerking" distanceAway:@"1.2 miles away" profileImage:[UIImage imageNamed:@"IronMan"]],
                     [[JSNCard alloc] initWithCardId:@"1" message:@"Testing message" senderId:@"1" fullName:@"Joe Newbry" jobTitle:@"Working and twerking" distanceAway:@"1.2 miles away" profileImage:[UIImage imageNamed:@"IronMan"]],
                     [[JSNCard alloc] initWithCardId:@"1" message:@"Testing message" senderId:@"1" fullName:@"Joe Newbry" jobTitle:@"Working and twerking" distanceAway:@"1.2 miles away" profileImage:[UIImage imageNamed:@"IronMan"]],
                     [[JSNCard alloc] initWithCardId:@"1" message:@"Testing message" senderId:@"1" fullName:@"Joe Newbry" jobTitle:@"Working and twerking" distanceAway:@"1.2 miles away" profileImage:[UIImage imageNamed:@"IronMan"]],
                     nil];
}



@end
