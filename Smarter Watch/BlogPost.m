//
//  BlogPost.m
//  Smarter Watch
//
//  Created by Josh Indig on 2015-01-17.
//  Copyright (c) 2015 Josh Indig. All rights reserved.
//

#import "BlogPost.h"

@implementation BlogPost

- (id) initWithTitle: (NSString *)title {
    self = [super init];
    
    if (self) {
        self.title = title;
    }
    
    return self;
}

+ (id) blogPostWithTitle: (NSString *)title{
    return [[self alloc]initWithTitle:title];
}





@end
