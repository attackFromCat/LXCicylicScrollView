//
//  LXCyclicScrollView.h
//  无限滚动
//
//  Created by lee on 16/3/4.
//  Copyright © 2016年 lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LXCyclicScrollView;

@protocol LXCyclicScrollViewDelegate <NSObject>
@optional
- (void)cyclicScrollView:(LXCyclicScrollView *)cisylicScrollView didClickImageAtIndex:(NSInteger)index;
@end

typedef NS_ENUM(NSInteger, LXCyclicScrollDirection) {
    /** 左右滑动 */
    LXCyclicScrollDirectionHorizontal = 0,
    /** 上下滑动 */
    LXCyclicScrollDirectionVertical
};

@interface LXCyclicScrollView : UIView
/** 图片数据(里面可以存放UIImage对象、NSString对象【本地图片名】、NSURL对象【远程图片的URL】) */
@property (nonatomic, strong) NSArray *images;
/** 占位图片 */
@property (nonatomic, strong) UIImage *placeholder;
/** 每张图片之间的时间间隔 */
@property (nonatomic, assign) NSTimeInterval interval;

@property (nonatomic, weak, readonly) UIPageControl *pageControl;

@property (nonatomic, assign) LXCyclicScrollDirection scrollDirection;

/** 代理 */
@property (nonatomic, weak) id<LXCyclicScrollViewDelegate> delegate;
@end
