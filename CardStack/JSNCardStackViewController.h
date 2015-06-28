//
//  JSNCardStackViewController.h
//  CardStack
//
//  Created by Joe Newbry on 6/28/15.
//  Copyright (c) 2015 Joe Newbry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSNCardStackCollectionViewDataSource.h"
#import "JSNCardStackCollectionViewDelegate.h"
#import "JSNCardCollectionView.h"

@interface JSNCardStackViewController : UIViewController <JSNCardStackCollectionViewDataSource, JSNCardStackCollectionViewDelegate>

@property (weak, nonatomic, readonly) JSNCardCollectionView *collectionView;

#pragma mark - Class methods
+ (UINib *)nib;
+ (instancetype)messagesViewController;

@end
