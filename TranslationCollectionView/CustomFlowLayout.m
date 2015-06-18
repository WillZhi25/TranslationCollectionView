//
//  CustomFlowLayout.m
//  TranslationCollectionView
//
//  Created by 植梧培 on 15/6/18.
//  Copyright (c) 2015年 机智的新手( http://zhiwupei.sinaapp.com ). All rights reserved.
//

#import "CustomFlowLayout.h"

@implementation CustomFlowLayout

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect {
   
    CGRect visibleRect;
    visibleRect.origin = self.collectionView.contentOffset;
    visibleRect.size = self.collectionView.bounds.size;
    NSArray *data = [super layoutAttributesForElementsInRect:rect];
    [data enumerateObjectsUsingBlock:^(UICollectionViewLayoutAttributes *obj, NSUInteger idx, BOOL *stop) {
        if (CGRectIntersectsRect (obj.frame,rect)) {
            CGFloat distance = CGRectGetMidX(visibleRect) - obj.center.x;
            CGRect frame = obj.frame;
            frame.origin.y += ABS(distance) * 0.3;
            frame.size.height -= ABS(distance) * 0.3;
            obj.frame = frame;
        }
    }];
    return data;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)oldBounds{
    return YES;
}



@end
