//
//  JSNCardCollectionViewFlowLayout.m
//  CardStack
//
//  Created by Joe Newbry on 6/28/15.
//  Copyright (c) 2015 Joe Newbry. All rights reserved.
//

#import "JSNCardCollectionViewLayout.h"

@interface JSNCardCollectionViewLayout ()

@property CGFloat xPosition;

@end

@implementation JSNCardCollectionViewLayout

- (void)jsn_configureFlowLayout
{
//    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
//        [self jsn_configureFlowLayout];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
//    [self jsn_configureFlowLayout];
}

- (CGSize)collectionViewContentSize
{
    return self.collectionView.frame.size;
}

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
{
    UICollectionViewLayoutAttributes *topCard = [self layoutAttributesForItemAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
    UICollectionViewLayoutAttributes *secondCard = [self layoutAttributesForItemAtIndexPath:[NSIndexPath indexPathForRow:1 inSection:0]];
    UICollectionViewLayoutAttributes *thirdCard = [self layoutAttributesForItemAtIndexPath:[NSIndexPath indexPathForRow:2 inSection:0]];

    return @[topCard, secondCard, thirdCard];
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewLayoutAttributes *attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
    attributes.frame = CGRectMake(10, 10 * indexPath.row, 50 * indexPath.row + 10, 50 * indexPath.row + 10);

    if (indexPath.row == 2) {
        attributes.frame = CGRectMake(self.xPosition, 10, 50 * indexPath.row + 10, 50 * indexPath.row + 10);
    }
    return attributes;
}

- (UICollectionViewLayoutAttributes *)initialLayoutAttributesForAppearingItemAtIndexPath:(NSIndexPath *)itemIndexPath
{
    return [self layoutAttributesForItemAtIndexPath:itemIndexPath];
}

- (UICollectionViewLayoutAttributes *)finalLayoutAttributesForDisappearingItemAtIndexPath:(NSIndexPath *)itemIndexPath
{
    return [self layoutAttributesForItemAtIndexPath:itemIndexPath];
}

- (void)userDidPan:(UIPanGestureRecognizer *)pan
{
    CGPoint touchLocation = [pan locationInView:self.collectionView];
    self.xPosition = touchLocation.x;
    NSLog(@"User panning");
    [self invalidateLayout];
}

@end
