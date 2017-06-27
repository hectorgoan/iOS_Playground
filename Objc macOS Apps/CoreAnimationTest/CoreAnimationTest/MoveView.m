//
//  MoveView.m
//  CoreAnimationTest
//
//  Created by Héctor Gonzalo Andrés on 5/11/15.
//  Copyright (c) 2015 Héctor Gonzalo Andrés. All rights reserved.
//

#import "MoveView.h"
#import <QuartzCore/QuartzCore.h>

@implementation MoveView
{
    NSImageView *_imageView;
    NSRect _startFrame;
    NSRect _endFrame;
    BOOL _isAtStart;
}

-(id)initWithCoder:(NSCoder *)frame
{
    self = [super initWithCoder:frame];
    if (self)
    {
        CGFloat width = self.frame.size.width;
        CGFloat height = self.frame.size.height;
        
        _startFrame = NSMakeRect(0, 0, width/3.0, height/3.0);
        _endFrame = NSMakeRect(width/2.0, 100, width/2, height/2.0);
        
        _imageView = [[NSImageView alloc]initWithFrame:_startFrame];
        [_imageView setImage:[NSImage imageNamed:@"Balon_de_baloncesto.png"]];
        [_imageView setImageScaling:NSImageScaleAxesIndependently];
        
        [self addSubview:_imageView];
        
        [_imageView setAnimations:@{@"frameOrigin": [self originAnimation]}];
        
        
        
        _isAtStart = YES;
        
    }
    return self;
    
}


-(CABasicAnimation *)originAnimation
{
    CABasicAnimation *originAnim = [CABasicAnimation animation];
    [originAnim setDuration:4.0f];
    NSPoint startPoint = _startFrame.origin;
    NSPoint endPoint = _endFrame.origin;
    
    [originAnim setFromValue:[NSValue valueWithPoint:startPoint]];  //NSValue "wraps" c variables into an obj-c object
    [originAnim setToValue:[NSValue valueWithPoint:endPoint]];
    
    return originAnim;
}

-(void)drawRect:(NSRect)dirtyRect   //Es llamada cuando se hace un resize o cuando se hace setNeedsDisplay
{
    if ([self inLiveResize]) //Oye, estas siendo redimensionado?
    {
        CGFloat width = self.frame.size.width;
        CGFloat height = self.frame.size.height;
        
        _startFrame = NSMakeRect(0, 0, width/3.0, height/3.0);
        _endFrame = NSMakeRect(width/2.0, 100, width/2, height/2.0);
        
        if (_isAtStart)
        {
            [_imageView setFrame:_startFrame];
        }else
        {
            [_imageView setFrame:_endFrame];
        }
    }
    
}


-(void)mouseDown:(NSEvent *)theEvent    //click en el área del NSView lo ejecuta
{
    if (_isAtStart)
    {
        [[_imageView animator] setFrame:_endFrame];
        _isAtStart = NO;
    }else
    {
        [[_imageView animator ]setFrame:_startFrame];
        _isAtStart = YES;
        
    }
    
}

@end
