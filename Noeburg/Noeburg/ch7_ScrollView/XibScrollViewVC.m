//
//  XibScrollViewVC.m
//  Noeburg
//
//  Created by Yevhen Triukhan on 05.12.17.
//  Copyright (c) 2017 Yevhen Triukhan. All rights reserved.
//

#import "XibScrollViewVC.h"

//#define    XIB_CODE
#define XIB_XIB

@interface XibScrollViewVC ()
@property (strong, nonatomic) IBOutlet UIView *mainView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *contentView;

@end
@implementation XibScrollViewVC








- (void)viewDidLoad{
//    [super viewDidLoad];


    self.scrollView.contentSize = self.contentView.bounds.size;
    
    
    
    
    
#ifdef XIB_CODE
    {
        if (self.view.subviews.count > 0) {
            for (UIView *subview in self.view.subviews) {
                [subview removeFromSuperview];
            }
        }
        
    CGFloat screenWidth = self.view.bounds.size.width;
    CGFloat screehHeigth = self.view.bounds.size.height;
    CGFloat buttonWidth = 200.;
    CGFloat buttonOffset = 40.;
    CGFloat headerHeigth = 45.;
    
    UILabel *header = [[UILabel alloc] initWithFrame:CGRectMake(0,
                                                                0,
                                                                screenWidth,
                                                                headerHeigth)];
    header.text = @"XibScrollViewVC (CODE)";
    header.textAlignment = NSTextAlignmentCenter;
    header.font = [UIFont boldSystemFontOfSize:10.];
    header.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:header];
    
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0,
                                                                             headerHeigth,
                                                                             screenWidth,
                                                                             screehHeigth - headerHeigth)];
    scrollView.scrollEnabled = YES;
    scrollView.autoresizingMask =
    UIViewAutoresizingFlexibleHeight |
    UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:scrollView];
    
    CGRect contentRect = scrollView.bounds;
    contentRect.size.height = screehHeigth * 2;
    UIView *contentView = [[UIView alloc] initWithFrame:contentRect];
    scrollView.contentSize = contentView.bounds.size;
    [scrollView addSubview:contentView];
    
    
    UILabel *firstLabel = [UILabel new];
    firstLabel.text = @"ONE (CODE)";
    firstLabel.backgroundColor = [UIColor redColor];
    firstLabel.textAlignment = NSTextAlignmentCenter;
    
    firstLabel.frame = CGRectMake(buttonOffset,
                                  buttonOffset,
                                  buttonWidth,
                                  buttonWidth);
    [contentView addSubview:firstLabel];
    
    UILabel *secondLabel = [UILabel new];
    secondLabel.text = @"TWO (CODE)";
    secondLabel.backgroundColor = [UIColor greenColor];
    secondLabel.textAlignment = NSTextAlignmentCenter;
    secondLabel.frame = CGRectMake(buttonOffset,
                                   contentView.bounds.size.height - buttonWidth - buttonOffset,
                                   buttonWidth,
                                   buttonWidth);
    [contentView addSubview:secondLabel];
    }
#endif
    
    
}

@end
