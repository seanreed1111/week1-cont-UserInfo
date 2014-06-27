//
//  SimpleHashTable.h
//  UserInfo
//
//  Created by Sean Reed on 6/27/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import <Foundation/Foundation.h>

//define the functions needed
// objectForKey:(id)key

// - (id)initWithObjects:(NSArray*)objects
//        forKeys:(NSArray*)keys


//Initializes a newly allocated dictionary with entries constructed from the contents of the objects and keys arrays.
//
//- (instancetype)initWithObjects:(NSArray *)objects forKeys:(NSArray *)keys
//Parameters
//objects
//An array containing the values for the new dictionary.
//keys
//An array containing the keys for the new dictionary. Each key is copied (using copyWithZone:; keys must conform to the NSCopying protocol), and the copy is added to the new dictionary.
//Discussion
//An NSInvalidArgumentException is raised if the objects and keys arrays do not have the same number of elements.

@interface SimpleHashTable : NSObject

@property(strong, nonatomic)NSArray *objects;
@property(strong, nonatomic)NSArray *keys;

- (id)initWithObjects:(NSArray*)objects
              forKeys:(NSArray*)keys;

- (id)objectForKey:(id)key;

@end
