//
//  DemoCardStackViewController.m
//  CardStack
//
//  Created by Joe Newbry on 6/28/15.
//  Copyright (c) 2015 Joe Newbry. All rights reserved.
//

#import "DemoCardStackViewController.h"
#import "DemoModelData.h"

@interface DemoCardStackViewController () <JSNCardStackCollectionViewDataSource>

@property (strong, nonatomic) DemoModelData *demoData;

@end

@implementation DemoCardStackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.demoData = [[DemoModelData alloc] init];

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

#pragma mark - JSNCardStackCollectionViewDataSource
- (id<JSNCardData>)collectionView:(JSNCardCollectionView *)collectionView cardDataForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.demoData.cards objectAtIndex:indexPath.row];
}

#pragma mark - Collection View Data Source
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.demoData.cards.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    JSNCardCollectionViewCell *cell = (JSNCardCollectionViewCell *)[super collectionView:collectionView cellForItemAtIndexPath:indexPath];

    cell.backgroundColor = [UIColor redColor];

    return cell;
}

@end
