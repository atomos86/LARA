//
//  LARCircleIcon.m
//  LARA
//
//  Created by Brian Thomas on 8/10/12.
//  Copyright (c) 2012 Endozemedia. All rights reserved.
//

#import "LARCircleIcon.h"

@implementation LARCircleIcon

@synthesize drawColor;

- (id) initWithFrame:(CGRect)frame andColor:(NSString *)selectedColor
{
    self = [super initWithFrame:frame];
    if (self)
    {
        // Initialization code
        self.opaque = NO;
        self.alpha = 1;
        if ([selectedColor isEqualToString:@"red"]) 
        {
            self.drawColor = [UIColor redColor];
        }
        else if ([selectedColor isEqualToString:@"blue"]) 
        {
            self.drawColor = [UIColor blueColor];
        }
        else if ([selectedColor isEqualToString:@"yellow"]) 
        {
            self.drawColor = [UIColor yellowColor];
        }
        else if ([selectedColor isEqualToString:@"cyan"]) 
        {
            self.drawColor = [UIColor cyanColor];
        }
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        // Initialization code
        self.opaque = NO;
        self.alpha = 1;
        self.drawColor = [UIColor redColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
 
    CGContextSetLineWidth(context, 2.0);
    
    CGRect currentEnclosingRect = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    CGContextClearRect(context, currentEnclosingRect);
    
    UIColor *currentColor = self.drawColor;
    CGContextSetStrokeColorWithColor(context, currentColor.CGColor);
 
    CGContextSetFillColorWithColor(context, [UIColor clearColor].CGColor);
    
    CGContextAddEllipseInRect(context, CGRectMake(1, 1, 14, 14));
    CGContextDrawPath(context, kCGPathFillStroke);
}


@end
