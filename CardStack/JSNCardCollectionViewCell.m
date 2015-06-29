//
//  JSNCardCollectionViewCell.m
//  CardStack
//
//  Created by Joe Newbry on 6/28/15.
//  Copyright (c) 2015 Joe Newbry. All rights reserved.
//

#import "JSNCardCollectionViewCell.h"

@interface JSNCardCollectionViewCell ()


@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation JSNCardCollectionViewCell

+ (UINib *)nib
{
    return [UINib nibWithNibName:NSStringFromClass([JSNCardCollectionViewCell class]) bundle:[NSBundle bundleForClass:[JSNCardCollectionViewCell class]]];
}

+ (NSString *)cellReuseIdentifier
{
    return NSStringFromClass([JSNCardCollectionViewCell class]);
}

- (void)configureWithTitle:(NSString *)title
{
    self.titleLabel.text = title;
}

@end
