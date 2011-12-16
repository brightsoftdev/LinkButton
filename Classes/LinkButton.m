//
//  LinkButton.m
//
//  Created by Ramon Torres on 11/29/11.
//  Copyright (c) 2011 Ramon E. Torres Salomon
//
//  Permission is hereby granted, free of charge, to any person obtaining
//  a copy of this software and associated documentation files (the "Software"),
//  to deal in the Software without restriction, including without limitation
//  the rights to use, copy, modify, merge, publish, distribute, sublicense,
//  and/or sell copies of the Software, and to permit persons to whom the Software
//  is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
//  INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
//  PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
//  OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
//  SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import <QuartzCore/QuartzCore.h>
#import "LinkButton.h"

@implementation LinkButton

-(void)_setup {
	[self setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
	self.layer.cornerRadius = 5.f;
	self.opaque = NO;
}

-(id)init {
	if ((self = [super init])) {
		[self _setup];
	}
	return self;
}

-(void)awakeFromNib {
	[super awakeFromNib];
	[self _setup];
}

-(void)setHighlighted:(BOOL)highlighted {
	[super setHighlighted:highlighted];

	if (highlighted) {
		self.backgroundColor = [UIColor grayColor];
	} else {
		self.backgroundColor = [UIColor clearColor];
	}
}

@end
