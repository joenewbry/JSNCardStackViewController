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

- (void)jsn_configureCardViewController
{
    self.collectionView.dataSource = self;

    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self.collectionView.collectionViewLayout action:@selector(userDidPan:)];
    [self.collectionView addGestureRecognizer:pan];
}

#pragma mark - View lifecyle

- (void)viewDidLoad
{
    [super viewDidLoad];

    [[[self class] nib] instantiateWithOwner:self options:nil];

    [self jsn_configureCardViewController];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.collectionView.collectionViewLayout invalidateLayout];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
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

    JSNCardCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[JSNCardCollectionViewCell cellReuseIdentifier] forIndexPath:indexPath];
    cell.backgroundColor = [UIColor blueColor];
    return cell;
}

#pragma mark - JSNCards collection view delegate

@end
