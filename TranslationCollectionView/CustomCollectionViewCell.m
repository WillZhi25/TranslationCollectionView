//
//  CustomCollectionViewCell.m
//  TranslationCollectionView
//
//  Created by 植梧培 on 15/6/18.
//  Copyright (c) 2015年 机智的新手( http://zhiwupei.sinaapp.com ). All rights reserved.
//

#import "CustomCollectionViewCell.h"

@interface CustomCollectionViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
@implementation CustomCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setImageName:(NSString *)imageName {
    _imageName = imageName;
    _imageView.image = [UIImage imageNamed:_imageName];
}

@end
