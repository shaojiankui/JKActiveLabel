//
//  JKActiveLabel.m
//  JKActiveLabel
//
//  Created by Jakey on 14/11/24.
//  Copyright (c) 2014年 www.skyfox.org. All rights reserved.
//

#import "JKActiveLabel.h"

@implementation JKActiveLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)addGesture{
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    
    [self addGestureRecognizer:tap];
    tap.numberOfTapsRequired =1 ;
    tap.numberOfTouchesRequired = 1;
}
-(void)willMoveToSuperview:(UIView *)newSuperview{
    if (newSuperview) {
        [self addGesture];
    }
}
- (BOOL)isUserInteractionEnabled
{
    return !_userInteractionDisable;
}
-(void)setUserInteractionEnabled:(BOOL)userInteractionEnabled{
    _userInteractionDisable = !userInteractionEnabled;
}
- (BOOL)canBecomeFirstResponder
{
    return YES;
}
- (void)activeLabelTouched:(JKActiveLabelTouched)activeLabelTouched{
    _activeLabelTouched= activeLabelTouched;
}
-(void)tap:(UITapGestureRecognizer *)tap

{
    if (tap && _activeLabelTouched  && self.enabled && self.userInteractionEnabled) {
        _activeLabelTouched((UILabel*)tap.view);
    }
}
-(void)setEdgeInsets:(UIEdgeInsets)edgeInsets{
    _edgeInsets= edgeInsets;
    [self setNeedsDisplay];
}
-(void)drawTextInRect:(CGRect)rect {
    return [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.edgeInsets)];
}
@end

