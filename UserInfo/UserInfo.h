//
//  UserInfo.h
//  UserInfo
//
//  Created by Sean Reed on 6/16/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.

//23. Object oriented programming
//• Write a program that creates a class for storing Names and Addresses
//• Write a program that reads names and addresses from a file and creates a new instance of the above class for each
//new entry
//• Identify duplicate names by using NSMutableDictionary with the above objects. Use names as keys and the objects
//above as values.

#import <Foundation/Foundation.h>

@interface UserInfo : NSObject

@property(strong, nonatomic) NSString *firstName;
@property(strong, nonatomic) NSString *lastName;
@property(strong, nonatomic) NSString *address;

// designated initializer
- (id)initWithFirstName:(NSString *)firstName
               lastName:(NSString *)lastName
                address:(NSString *)address;

- (id )init;

- (id)initWithArray:(NSArray *)array;

- (void)printUserInfo;


@end

