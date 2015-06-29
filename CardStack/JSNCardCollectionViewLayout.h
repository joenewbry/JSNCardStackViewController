//
//  JSNCardCollectionViewFlowLayout.h
//  CardStack
//
//  Created by Joe Newbry on 6/28/15.
//  Copyright (c) 2015 Joe Newbry. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JSNCardCollectionView;

@interface JSNCardCollectionViewLayout : UICollectionViewLayout

- (void)userDidPan:(UIPanGestureRecognizer *)pan;

@end
