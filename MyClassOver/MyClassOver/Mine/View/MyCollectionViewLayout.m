//
//  MyCollectionViewLayout.m
//  MyClassOver
//
//  Created by 李聪会 on 16/3/30.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import "MyCollectionViewLayout.h"

@implementation MyCollectionViewLayout
- (void)prepareLayout
{
    [super prepareLayout];
}
- (CGSize)collectionViewContentSize
{
    CGSize size = CGSizeMake(100, 100);
    return size;
}
- (nullable NSArray<__kindof UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    return nil;
}

@end
