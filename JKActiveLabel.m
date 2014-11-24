//
//  JKActiveLabel.m
//  vw-service
//
//  Created by Jakey on 14/11/24.
//  Copyright (c) 2014年 jakey. All rights reserved.
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
- (BOOL)isUserInteractionEnabled
{
    return YES;
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}
@end
