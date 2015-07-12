//
//  GradientView.m
//  gradient_test
//
//  Created by Carlos Thurber on 07/11/15.
//  Copyright (c) 2015 Bit6. All rights reserved.
//

#import "GradientView.h"

@implementation GradientView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self customInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self customInit];
    }
    return self;
}

- (void)customInit {
    self.topColor = [UIColor redColor];
    self.bottomColor = [UIColor whiteColor];
}

#pragma mark - Drawing

- (void)drawRect:(CGRect)rect {
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.bounds;
    gradient.colors = @[(id)self.topColor.CGColor,(id)self.bottomColor.CGColor];
    [self.layer insertSublayer:gradient atIndex:0];
}

//These drawings will only called on Interface Builder at design time.
- (void)prepareForInterfaceBuilder
{
    
}

#pragma mark - Properties

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    _cornerRadius = cornerRadius;
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0;
}

- (void)setCircleMode:(BOOL)circleMode
{
    _circleMode = circleMode;
    if (circleMode) {
        self.cornerRadius = self.bounds.size.width/2;
        self.layer.masksToBounds = YES;
    }
}

- (void)setBorderColor:(UIColor *)borderColor
{
    _borderColor = borderColor;
    self.layer.borderColor = borderColor.CGColor;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    _borderWidth = borderWidth;
    self.layer.borderWidth = borderWidth;
}

@end
