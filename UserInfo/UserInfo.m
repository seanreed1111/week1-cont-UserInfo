//
//  UserInfo.m
//  UserInfo
//
//  Created by Sean Reed on 6/16/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import "UserInfo.h"

@implementation UserInfo

- (id)initWithArray: (NSArray *)array
{
    self = [super init];
    
    if(self)
    {
        self.firstName = array[0];
        self.lastName = array[1];
        self.address  = array[2];
    }

    return self;
}

// designated initializer
- (id)initWithFirstName:(NSString *)firstName
               lastName:(NSString *)lastName
                address:(NSString *)address
{
    
    self = [super init];
    
    if(self)
    {
        self.firstName = firstName;
        self.lastName  = lastName;
        self.address    = address;
    }
    
    return self;
}


// override init
- (id )init
{
    return [self initWithFirstName:@"none"
                          lastName:@"none"
                           address:@"none"];
}
- (void)printUserInfo
{
    if (self)
    {
        NSLog(@"First Name is %@\n", self.firstName);
        NSLog(@"Last Name is %@\n", self.lastName);
        NSLog(@"Address is %@\n", self.address);
    }
}

@end

