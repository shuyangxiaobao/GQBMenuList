//
//  GQBMenuListConfigModel.m
//  GQBMenuList_demo
//
//  Created by xiaobao on 2019/6/13.
//  Copyright © 2019 122. All rights reserved.
//


#import "GQBMenuListConfigModel.h"

@implementation GQBMenuListConfigModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        //配置初值
        self.titleFont = [UIFont systemFontOfSize:14];
        self.titleColorOfSelected = [UIColor orangeColor];
        self.titleColorOfUnSelected = [UIColor darkGrayColor];
        
        self.sizeOfImageView = CGSizeMake(15, 15);
        self.spacingOfTitleAndImage = 3.0f;
        
        self.heightOfUnderLineSelectedView = 3.0f;
        
        self.underLineViewColor = [UIColor groupTableViewBackgroundColor];
        self.heightOfUnderLineView = 1.0f;
        
        self.spacingOfSubView = 15.0f;
        self.spacingOfSelectLineViewToSubViewContent = 3.0f;
        
        self.backColor = [UIColor whiteColor];
        
        self.canRepeatTouch = NO;
        
        self.scrollAnimationType = YBLevelListScrollAnimationTypeGradient;
    }
    return self;
}
- (void)setTitleColorOfSelected:(UIColor *)titleColorOfSelected {
    _titleColorOfSelected = titleColorOfSelected;
    
    self.underLineSelectedViewColor = titleColorOfSelected;
}
- (void)setImageInfoArr:(NSArray<id> *)imageInfoArr {
    _imageInfoArr = imageInfoArr;
    
    if (!self.imageInfoSelectedArr) {
        self.imageInfoSelectedArr = [imageInfoArr mutableCopy];
    }
}


@end
