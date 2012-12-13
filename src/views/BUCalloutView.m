//
//  BUCalloutView.m
//  CycleStreets
//
//  Created by Neil Edwards on 13/12/2012.
//  Copyright (c) 2012 CycleStreets Ltd. All rights reserved.
//

#import "BUCalloutView.h"
#import "ExpandedUILabel.h"
#import "BUCalloutBackgroundView.h"
#import "UIView+Additions.h"

@interface BUCalloutView()

@property(nonatomic,strong)  NSString							*title;
@property(nonatomic,strong)  ExpandedUILabel					*titleLabel;
@property(nonatomic,strong)  BUCalloutBackgroundView			*backgroundView;


@end


@implementation BUCalloutView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
		
		self.backgroundColor=[UIColor clearColor];
		
		self.backgroundView=[[BUCalloutBackgroundView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
		[self addSubview:_backgroundView];
        
		self.titleLabel=[[ExpandedUILabel alloc]initWithFrame:CGRectMake(0, 0, 10, 13)];
		_titleLabel.multiline=NO;
		_titleLabel.insetValue=5;
		_titleLabel.textAlignment=UITextAlignmentCenter;
		_titleLabel.textColor=[UIColor whiteColor];
		_titleLabel.font=[UIFont boldSystemFontOfSize:13];
		[self addSubview:_titleLabel];
		
		
		
    }
    return self;
}



-(void)updateTitleLabel:(NSString*)str{

	_titleLabel.text=str;
	
	_backgroundView.fillColor=_fillColor;
	_backgroundView.cornerRadius=_cornerRadius;
	
	[_backgroundView setFrame:CGRectMake(0, 0, _titleLabel.width, _titleLabel.height+12)];
	[_backgroundView setNeedsDisplay];
	
}


@end