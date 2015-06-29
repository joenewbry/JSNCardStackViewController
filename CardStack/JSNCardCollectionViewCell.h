//
//  JSNCardCollectionViewCell.h
//  CardStack
//
//  Created by Joe Newbry on 6/28/15.
//  Copyright (c) 2015 Joe Newbry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSNCardCollectionViewCell : UICollectionViewCell

+ (UINib *)nib;
+ (NSString *)cellReuseIdentifier;
- (void)configureWithTitle:(NSString *)title;

@end
