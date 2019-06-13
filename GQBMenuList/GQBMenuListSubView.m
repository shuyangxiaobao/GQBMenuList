//
//  GQBMenuListSubView.m
//  GQBMenuList_demo
//
//  Created by xiaobao on 2019/6/13.
//  Copyright © 2019 122. All rights reserved.
//


#import "GQBMenuListSubView.h"

@implementation GQBMenuListSubView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.titleImageView];
        [self addSubview:self.titleLabel];
    }
    return self;
}

#pragma mark *** getter ***
- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [UILabel new];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLabel;
}
- (UIImageView *)titleImageView {
    if (!_titleImageView) {
        _titleImageView = [UIImageView new];
        _titleImageView.contentMode = UIViewContentModeScaleAspectFit;
        _titleImageView.layer.masksToBounds = YES;
    }
    return _titleImageView;
}

@end
