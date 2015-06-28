//
//  JSNCardStackCollectionViewDataSource.h
//  CardStack
//
//  Created by Joe Newbry on 6/28/15.
//  Copyright (c) 2015 Joe Newbry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "JSNCardData.h"

@protocol JSNCardData;

@class JSNCardCollectionView;

@protocol JSNCardStackCollectionViewDataSource <UICollectionViewDataSource>

@required

- (id<JSNCardData>)collectionView:(JSNCardCollectionView *)collectionView cardDataForItemAtIndexPath:(NSIndexPath *)indexPath;

@end