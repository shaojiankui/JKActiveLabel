//
//  JKActiveLabel.h
//  vw-service
//
//  Created by Jakey on 14/11/24.
//  Copyright (c) 2014年 jakey. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^TouchLabel)(UILabel *lable);
@interface JKActiveLabel : UILabel
{
    TouchLabel _toucheLable;
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
-(void)setLableTouched:(TouchLabel)toucheLable;

@end
