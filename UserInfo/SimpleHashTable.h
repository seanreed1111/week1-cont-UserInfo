//
//  SimpleHashTable.h
//  UserInfo
//
//  Created by Sean Reed on 6/27/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import <Foundation/Foundation.h>

//Initializes a newly allocated dictionary with entries constructed from the contents of the objects and keys arrays.


@interface SimpleHashTable : NSObject

@property(strong, nonatomic)NSMutableArray *objectArray;
@property(strong, nonatomic)NSMutableArray *keyArray;

- (id)initWithObjects:(NSArray*)objects
              forKeys:(NSArray*)keys;

- (id)objectForKey:(id)key;

- (id)init;

- (void)show;

@end
