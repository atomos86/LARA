//
//  LARCircleIcon.h
//  LARA
//
//  Created by Brian Thomas on 8/10/12.
//  Copyright (c) 2012 Endozemedia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LARCircleIcon : UIView

@property (nonatomic, strong) UIColor *drawColor;

- (id)initWithFrame:(CGRect)frame andColor:(NSString *)selectedColor;

@end
