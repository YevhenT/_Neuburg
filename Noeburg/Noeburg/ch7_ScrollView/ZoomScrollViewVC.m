//
//  ZoomScrollViewVC.m
//  Noeburg
//
//  Created by Yevhen Triukhan on 06.12.17.
//  Copyright (c) 2017 Yevhen Triukhan. All rights reserved.
//

#import "ZoomScrollViewVC.h"

@interface ZoomScrollViewVC ()<UIScrollViewDelegate>

@end

@implementation ZoomScrollViewVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIScrollView* sv = [UIScrollView new];
    sv.backgroundColor = [UIColor whiteColor];
    sv.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:sv];
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[sv]|"
                                             options:0 metrics:nil
                                               views:@{@"sv":sv}]];
    [self.view addConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[sv]|"
                                             options:0 metrics:nil
                                               views:@{@"sv":sv}]];
    UIView* v = [UIView new]; // content view
    [sv addSubview: v];
CGFloat y = 10;
for (int i=0; i<30; i++) {
    UILabel* lab = [UILabel new];
    lab.text = [NSString stringWithFormat:@"This is label %d", i+1];
    [lab sizeToFit];
    CGRect f = lab.frame;
    f.origin = CGPointMake(10,y);
    lab.frame = f;
    [v addSubview:lab]; // add to content view, not scroll view
    y += lab.bounds.size.height + 10;
}
// set content view frame and content size explicitly
v.frame = CGRectMake(0,0,0,y);
sv.contentSize = v.frame.size;
    
    v.tag = 999;
    sv.minimumZoomScale = 0.2;
    sv.maximumZoomScale = 2.0;
    sv.delegate = self;
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



#pragma mark -
#pragma mark UIScrollViewDelegate protocol
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return [scrollView viewWithTag:999];
}
@end
