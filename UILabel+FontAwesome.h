//
//  UILabel+FontAwesome.h
//  ContentSift
//
//  Created by Deepak Prabhakara on 25/03/2014.
//  Copyright (c) 2014 ContentSift. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UIFont+FontAwesome.h"
#import "NSString+FontAwesome.h"

@interface UILabel (FontAwesome)

- (void)fontAwesomeFontOfSize:(CGFloat)size value:(FAIcon)value;

@end
