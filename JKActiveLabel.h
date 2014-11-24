//
//  JKActiveLabel.h
//  vw-service
//
//  Created by Jakey on 14/11/24.
//  Copyright (c) 2014年 jakey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JKActiveLabel : UILabel
@property (readwrite) UIView *inputView;
@property (readwrite) UIView *inputAccessoryView;

- (BOOL) canBecomeFirstResponder;
- (BOOL) isUserInteractionEnabled;
@end
