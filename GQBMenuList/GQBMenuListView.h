//
//  GQBMenuListView.h
//  GQBMenuList_demo
//
//  Created by xiaobao on 2019/6/13.
//  Copyright © 2019 122. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <SDWebImage/UIImageView+WebCache.h>
#import "GQBMenuListConfigModel.h"
#import "GQBMenuListSubView.h"

#if DEBUG
#define LOGERRORMESSAGE(x) NSLog(@"YBLevelListView ———— error : \n%@", x);
#else
#define LOGERRORMESSAGE(x) nil;
#endif

@class GQBMenuListView;

@protocol YBLevelListViewDelegate <NSObject>

- (void)yBLevelListView:(GQBMenuListView *)yBLevelListView chooseIndex:(NSInteger)index;

@end

@interface GQBMenuListView : UIView

@property (nonatomic, weak) id <YBLevelListViewDelegate> delegate;

/**
 初始化方法

 @param frame frame
 @param configModel 配置UI的model
 @return 实例
 */
- (instancetype)initWithFrame:(CGRect)frame configModel:(GQBMenuListConfigModel *)configModel;


/**
 UI配置的model
 */
@property (nonatomic, strong, readonly) GQBMenuListConfigModel *configModel;

/**
 通过model配置UI

 @param model --
 */
- (void)configUIWithModel:(GQBMenuListConfigModel *)model;


/**
 当前选择的下标
 */
@property (nonatomic, assign, readonly) NSInteger selectedIndex;

/**
 手动选择下标
 
 @param toIndex 下标
 */
- (void)selectToIndex:(NSInteger)toIndex;


/**
 遍历所有选择模块视图（用来适当的自定义选择模块的view）

 @param block --
 */
- (void)traverseAllSubView:(void(^)(GQBMenuListSubView *subView, NSInteger idx))block;


/**
 配置动画偏移

 @param offsetX x方向偏移量
 */
- (void)configAnimationOffsetX:(CGFloat)offsetX;


@end
