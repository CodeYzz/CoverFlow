//
//  CoverFlow.m
//  CoverFlow
//
//  Created by lanou on 16/1/13.
//  Copyright © 2016年 yan. All rights reserved.
//

#import "CoverFlow.h"
#import "CoverFlowView.h"
#import "UIImageView+LBBlurredImage.h"

@interface CoverFlow ()<CoverFlowViewDelegate>

@property (nonatomic,strong)UIImageView *blurImageView;

@end

@implementation CoverFlow

+ (id)coverFlowViewWithFrame:(CGRect)frame andImages: (NSMutableArray *)rawImages sideImageCount:(int) sideCount sideImageScale: (CGFloat) sideImageScale middleImageScale: (CGFloat) middleImageScale{
    CoverFlow *coverFlow = [[CoverFlow alloc]initWithFrame:frame];
    
    
    coverFlow.blurImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, coverFlow.frame.size.width, coverFlow.frame.size.height)];
    [coverFlow addSubview:coverFlow.blurImageView];
    
    CoverFlowView *coverFlowView = [CoverFlowView coverFlowViewWithFrame:CGRectMake(0, 0,coverFlow.frame.size.width,coverFlow.frame.size.height) andImages:rawImages sideImageCount:6 sideImageScale:0.35 middleImageScale:0.9];
    coverFlowView.backgroundColor = [UIColor clearColor];
    [coverFlow addSubview:coverFlowView];
    coverFlowView.delegate = coverFlow;
    
    [coverFlow.blurImageView setImageToBlur:[coverFlowView getCurrentImage]
                            blurRadius:kLBBlurredImageDefaultBlurRadius
                            completionBlock:nil];
    
    
    return coverFlow;
}

- (void)setBlurImage:(UIImage *)image{
    [self.blurImageView setImageToBlur:image
                        blurRadius:kLBBlurredImageDefaultBlurRadius
                   completionBlock:nil];
}

@end
