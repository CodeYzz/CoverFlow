//
//  ViewController.m
//  CoverFlow
//
//  Created by lanou on 16/1/13.
//  Copyright © 2016年 yan. All rights reserved.
//

#import "ViewController.h"
#import "ZzCoverFlow.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.view.frame = CGRectMake(0, 0, 320, 460);
    
    NSMutableArray *sourceImages = [NSMutableArray arrayWithCapacity:20];
    for (int i = 0; i <20 ; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", i]];
        [sourceImages addObject:image];
    }
    
    //CoverFlowView *coverFlowView = [CoverFlowView coverFlowViewWithFrame: frame andImages:_arrImages sidePieces:6 sideScale:0.35 middleScale:0.6];
    
//    CoverFlowView *coverFlowView = [CoverFlowView coverFlowViewWithFrame:CGRectMake(0, 100,[UIScreen mainScreen].bounds.size.width , self.view.frame.size.width) andImages:sourceImages sideImageCount:6 sideImageScale:0.35 middleImageScale:0.9];
    CoverFlow *coverFlow = [CoverFlow coverFlowViewWithFrame:CGRectMake(0, 100,[UIScreen mainScreen].bounds.size.width , self.view.frame.size.width) andImages:sourceImages sideImageCount:6 sideImageScale:0.7 middleImageScale:0.9];
    [self.view addSubview:coverFlow];

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
