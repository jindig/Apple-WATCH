//
//  BlogPost.h
//  Smarter Watch
//
//  Created by Josh Indig on 2015-01-17.
//  Copyright (c) 2015 Josh Indig. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSString *thumbnail;
@property (nonatomic, strong) NSString *blogName;

// Designated Initializer
- (id) initWithTitle: (NSString *)title;
+ (id) blogPostWithTitle: (NSString *)title;

@end
