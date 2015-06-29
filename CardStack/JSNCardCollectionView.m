//
//  JSNCardCollectionView.m
//  CardStack
//
//  Created by Joe Newbry on 6/28/15.
//  Copyright (c) 2015 Joe Newbry. All rights reserved.
//

#import "JSNCardCollectionView.h"

@implementation JSNCardCollectionView

@dynamic dataSource;
@dynamic delegate;
@dynamic collectionViewLayout;

- (void)jsn_configureCollectionView
{
    [self registerNib:[JSNCardCollectionViewCell nib] forCellWithReuseIdentifier:[JSNCardCollectionViewCell cellReuseIdentifier]];
}

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout
{
    self = [super initWithFrame:frame collectionViewLayout:layout];
    if (self) {
        [self jsn_configureCollectionView];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self jsn_configureCollectionView];
}

@end
