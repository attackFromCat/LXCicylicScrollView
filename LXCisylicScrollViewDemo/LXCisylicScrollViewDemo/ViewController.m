//
//  ViewController.m
//  LXCisylicScrollViewDemo
//
//  Created by 李翔 on 2016/12/26.
//  Copyright © 2016年 Lee Xiang. All rights reserved.
//

#import "ViewController.h"
#import "LXCyclicScrollView.h"

@interface ViewController () <LXCyclicScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *displayTextF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LXCyclicScrollView *scrollView = [[LXCyclicScrollView alloc] init];
    //    scrollView.scrollDirection = LXCyclicScrollDirectionVertical;
    scrollView.frame = CGRectMake(0, 0, self.view.frame.size.width, 200);
    scrollView.images = @[
                          [NSURL URLWithString:@"http://123/png"],
                          [NSURL URLWithString:@"http://pic6.huitu.com/res/20130116/84481_20130116142820494200_1.jpg"],
                          [UIImage imageNamed:@"ima_1"],
                          @"ima_4",
                          [UIImage imageNamed:@"ima_2"],
                          [UIImage imageNamed:@"ima_3"]
                          ];
    scrollView.pageControl.pageIndicatorTintColor = [UIColor grayColor];
    scrollView.pageControl.currentPageIndicatorTintColor = [UIColor blackColor];
    scrollView.delegate = self;
    [self.view addSubview:scrollView];
}

#pragma mark - LXCisylicScrollViewDelegate
- (void)cyclicScrollView:(LXCyclicScrollView *)cisylicScrollView didClickImageAtIndex:(NSInteger)index
{
    self.displayTextF.textAlignment = NSTextAlignmentCenter;
    self.displayTextF.text = [NSString stringWithFormat:@"点击了第%zd个图片", index];
    
}

@end
