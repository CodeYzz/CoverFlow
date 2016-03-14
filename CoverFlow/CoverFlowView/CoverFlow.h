//
//  CoverFlow.h
//  CoverFlow
//
//  Created by lanou on 16/1/13.
//  Copyright © 2016年 yan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoverFlow : UIView

+ (id)coverFlowViewWithFrame:(CGRect)frame
                   andImages: (NSMutableArray *)rawImages
              sideImageCount:(int) sideCount
              sideImageScale: (CGFloat) sideImageScale
            middleImageScale: (CGFloat) middleImageScale;

@end
