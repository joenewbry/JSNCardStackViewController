//
//  DemoCardStackViewController.m
//  CardStack
//
//  Created by Joe Newbry on 6/28/15.
//  Copyright (c) 2015 Joe Newbry. All rights reserved.
//

#import "DemoCardStackViewController.h"
#import "DemoModelData.h"

@interface DemoCardStackViewController () <JSNCardStackCollectionViewDataSource, JSNCardStackCollectionViewDelegate>

@property (strong, nonatomic) DemoModelData *demoData;

@end

@implementation DemoCardStackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.demoData = [[DemoModelData alloc] init];

    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
}

#pragma mark - JSNCardStackCollectionViewDataSource
- (id<JSNCardData>)collectionView:(JSNCardCollectionView *)collectionView cardDataForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.demoData.cards objectAtIndex:indexPath.row];
}

#pragma mark - Collection View Data Source


#pragma mark -- JSNCardStackCollectionViewDelegate




@end
