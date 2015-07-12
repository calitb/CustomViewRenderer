//
//  GradientView.h
//  gradient_test
//
//  Created by Carlos Thurber on 07/11/15.
//  Copyright (c) 2015 Bit6. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface GradientView : UIView

@property (nonatomic, strong) IBInspectable UIColor *topColor;
@property (nonatomic, strong) IBInspectable UIColor *bottomColor;
@property (nonatomic) IBInspectable CGFloat cornerRadius;
@property (nonatomic) IBInspectable BOOL circleMode;

@property (nonatomic) IBInspectable UIColor *borderColor;
@property (nonatomic) IBInspectable CGFloat borderWidth;

@end
