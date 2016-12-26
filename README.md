# LXCicylicScrollView
一款无线循环图片滚动器

效果为:
![Cyclic.gif](http://upload-images.jianshu.io/upload_images/1358629-3dbb1346a9e172f9.gif?imageMogr2/auto-orient/strip)

```objc
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
/** 可以修改页码控制器的颜色等 */
@property (nonatomic, weak, readonly) UIPageControl *pageControl;
/** 图片滚动的方向 */
@property (nonatomic, assign) LXCyclicScrollDirection scrollDirection;

/** 代理 */
@property (nonatomic, weak) id<LXCyclicScrollViewDelegate> delegate;
@end
```
