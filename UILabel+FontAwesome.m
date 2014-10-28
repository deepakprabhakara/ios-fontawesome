//
//  UILabel+FontAwesome.m
//  ContentSift
//
//  Created by Deepak Prabhakara on 25/03/2014.
//  Copyright (c) 2014 ContentSift. All rights reserved.
//

#import "UILabel+FontAwesome.h"

@implementation UILabel (FontAwesome)

- (void)fontAwesomeFontOfSize:(CGFloat)size value:(FAIcon)value {
    [self setFont:[UIFont fontAwesomeFontOfSize:size]];
    self.text = [NSString fontAwesomeIconStringForEnum:value];
}

@end
