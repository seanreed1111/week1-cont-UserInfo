//
//  SimpleHashTable.m
//  UserInfo
//
//  Created by Sean Reed on 6/27/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import "SimpleHashTable.h"


@implementation SimpleHashTable

// designated initializer
- (id)initWithObjects:(NSArray *)objects forKeys:(NSArray *)keys
{
    self = [super init];
    
    if (self && (objects.count == keys.count))
    {
        _objectArray  = [objects mutableCopy];
        _keyArray   = [keys mutableCopy];
    }
    return self;
}

//override init

- (id)init
{
    self = [super init];
    if (self)
    {
        [self.objectArray setArray:@[@""]];
        [self.keyArray    setArray:@[@""]];
    }
    return self;
}

- (id)objectForKey:(id)key
{ //return a copy of the object that corresponds to that key
    // find out where the index is in the key array
    //return the object that is in the same index in object array
    id object = nil;
    
    for (int i = 0;i < self.keyArray.count; i++)
    {
        //use for keys that are NSString* objects
        if ([_keyArray[i] respondsToSelector:@selector(isEqualToString:)])
        {
            if([_keyArray[i] isEqualToString:key])
            {
                // copy object at _objectArray[i] to object
               object =[ _objectArray[i] mutableCopy];
                break;
            }
        }
    }
    
    return object; // returns nil if not found
}

- (void)show
{
    for (int i = 0; i < self.keyArray.count;i++)
    {
        NSLog(@"%@ %@\n",_keyArray[i], _objectArray[i]);
    }
}
@end
