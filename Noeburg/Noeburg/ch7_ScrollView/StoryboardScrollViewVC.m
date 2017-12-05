//
//  StoryboardScrollViewVC.m
//  Noeburg
//
//  Created by Yevhen Triukhan on 05.12.17.
//  Copyright (c) 2017 Yevhen Triukhan. All rights reserved.
//

#import "StoryboardScrollViewVC.h"

@interface StoryboardScrollViewVC ()
@property (strong, nonatomic) IBOutlet UIView *rootView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *contentView;

@end

@implementation StoryboardScrollViewVC



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
//для варианта без автолейаут и с растянутым вью в сторибоард
//    self.rootView.frame = [[UIScreen mainScreen] bounds];
//    self.scrollView.frame = CGRectMake(0, 45, self.rootView.bounds.size.width, self.rootView.bounds.size.height - 45);
//    self.scrollView.contentSize = self.contentView.bounds.size;
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

@end
