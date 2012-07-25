//
//  UIView+_JGANibLoading.m
//  HMS
//
//  Created by John Grant on 12-07-05.
//  Copyright (c) 2012 Healthcare Made Simple. All rights reserved.
//

#import "UIView+JGANibLoading.h"

@implementation UIView (JGANibLoading)

+ (id)viewFromNib
{
    UIView *result = nil; 
    NSArray* elements = [[NSBundle mainBundle] loadNibNamed: NSStringFromClass([self class])
                                                      owner: nil options: nil];
    for (id anObject in elements) { 
        if ([anObject isKindOfClass:[self class]]){
            result = anObject;
            break;
        } 
    } 
    return result;
}

@end
