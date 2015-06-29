//
//  JSNCardCollectionView.h
//  CardStack
//
//  Created by Joe Newbry on 6/28/15.
//  Copyright (c) 2015 Joe Newbry. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "JSNCardStackCollectionViewDelegate.h"
#import "JSNCardStackCollectionViewDataSource.h"
#import "JSNCardCollectionViewLayout.h"
#import "JSNCardCollectionViewCell.h"

@interface JSNCardCollectionView : UICollectionView

@property (weak, nonatomic) id<JSNCardStackCollectionViewDataSource> dataSource;
@property (weak, nonatomic) JSNCardCollectionViewLayout *collectionViewLayout;


@end
