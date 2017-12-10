//
//  PagingScrollViewVC.m
//  Noeburg
//
//  Created by Yevhen Triukhan on 06.12.17.
//  Copyright (c) 2017 Yevhen Triukhan. All rights reserved.
//

#import "PagingScrollViewVC.h"

@interface PagingScrollViewVC () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pager;

@end

@implementation PagingScrollViewVC

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
    // Do any additional setup after loading the view.
    
    self.scrollView.delegate = self;
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
#pragma mark Actions
- (IBAction)userDidPage:(UIPageControl *)sender {
    NSInteger p = self.pager.currentPage;
    CGFloat w = self.scrollView.bounds.size.width;
    [self.scrollView setContentOffset:CGPointMake(p*w, 0)
                             animated:YES];
}


#pragma mark -
#pragma mark UIScrollViewDelegate protocol
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
//    NSLog(@"begin");
    
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    CGFloat currentOffset = self.scrollView.contentOffset.x;
    CGFloat screenWidth = self.scrollView.bounds.size.width;
    self.pager.currentPage = currentOffset / screenWidth;
    
}


@end
