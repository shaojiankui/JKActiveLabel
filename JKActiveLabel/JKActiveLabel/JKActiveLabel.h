//
//  JKActiveLabel.h
//  JKActiveLabel
//
//  Created by Jakey on 14/11/24.
//  Copyright (c) 2014年 www.skyfox.org. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^JKActiveLabelTouched)(UILabel *lable);
@interface JKActiveLabel : UILabel
{
    JKActiveLabelTouched _activeLabelTouched;
    BOOL _userInteractionDisable;
}
@property (readwrite) UIView *inputView;
@property (readwrite) UIView *inputAccessoryView;
/**
 *  @author Jakey, 16-05-10 17:05:53
 *
 *  上下左右可调文字间距
 */
@property(nonatomic) UIEdgeInsets edgeInsets;
- (BOOL) canBecomeFirstResponder;
- (BOOL) isUserInteractionEnabled;
- (void)activeLabelTouched:(JKActiveLabelTouched)activeLabelTouched;

@end
