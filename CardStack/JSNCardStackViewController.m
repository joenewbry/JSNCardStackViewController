//
//  JSNCardStackViewController.m
//  CardStack
//
//  Created by Joe Newbry on 6/28/15.
//  Copyright (c) 2015 Joe Newbry. All rights reserved.
//

#import "JSNCardStackViewController.h"

@interface JSNCardStackViewController ()

@property (weak, nonatomic) IBOutlet JSNCardCollectionView *collectionView;

@end

@implementation JSNCardStackViewController

+ (UINib *)nib
{
    return [UINib nibWithNibName:NSStringFromClass([JSNCardStackViewController class]) bundle:[NSBundle bundleForClass:[JSNCardStackViewController class]]];
}

+ (instancetype)messagesViewController
{
    return [[[self class] alloc] initWithNibName:NSStringFromClass([JSNCardStackViewController class]) bundle:[NSBundle bundleForClass:[JSNCardStackViewController class]]];
}



#pragma mark - JSNCards collection view data source
- (id<JSNCardData>)collectionView:(JSNCardCollectionView *)collectionView cardDataForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSAssert(NO, @"ERROR: required method not implemented: %s", __PRETTY_FUNCTION__);
    return nil;
}

#pragma mark - Collection view data source
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 0;
}

- (UICollectionViewCell *)collectionView:(JSNCardCollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    id<JSNCardData> cardItem = [collectionView.dataSource collectionView:collectionView cardDataForItemAtIndexPath:indexPath];

    JSNCardCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CardCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor blueColor];
    return cell;
}

#pragma mark - JSNCards collection view delegate

@end
