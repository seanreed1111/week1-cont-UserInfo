//
//  main.m
//  UserInfo
//
//  Created by Sean Reed on 6/16/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "UserInfo.h"
#import "parse.h"
#import "SimpleHashTable.h"

int main(int argc, char * argv[])
{
    NSString *fileLocation = @"/Users/seanreed/iosProjects/UserInfo/UserInfo/userinfodata.txt"; // absolute path needed
    
    
    NSString *fileContents = [NSString stringWithContentsOfFile:fileLocation encoding:NSUTF8StringEncoding error:NULL];
  
    NSArray *fileByLines = [[NSArray alloc] init];
    
    fileByLines = [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    
    NSMutableArray *inputRecords = [[NSMutableArray alloc]init];
    NSMutableArray *output = [[NSMutableArray alloc]init];
    
    for (NSString *line in fileByLines)
    {
        // now separate each array element 'line' into firstName, lastName, and address Assume CSV
        [inputRecords addObject:[line componentsSeparatedByString:@","]];
    }
    
    
    for(NSArray *record in inputRecords)
    {
        if([record isEqualToArray:@[@""]])
        {
            [output addObject:@""];
        }
        else
        {
            [output addObject:[[UserInfo alloc]initWithArray:record]];
        }
    }
    
    
//    • Identify duplicate names by using NSMutableDictionary with the above objects. Use names as keys and the objects
//    above as values.


NSMutableDictionary *myDictionary = [[NSMutableDictionary alloc] init];
    
    for (UserInfo *user in output)
    {
        if([user respondsToSelector:@selector(lastName)])
        {
            if(![myDictionary objectForKey:user.lastName])
            {// add to dictionary
                myDictionary[user.lastName] = user.address;
            }
        }
    }
   NSLog(@"Dictionary is \n%@", myDictionary);
    
    //    24. Implement a simple hash table
    //    • Define the interface first
    //    • Implement the methods
// read the keys and values using output, to duplicate the functionality of the NSMutableDictionary
    
    NSMutableArray *keys = [[NSMutableArray alloc]init];
    NSMutableArray *values = [[NSMutableArray alloc]init];
    
    for (UserInfo *user in output)
    {
        if([user respondsToSelector:@selector(lastName)])
        {
            [keys addObject:user.lastName];
            [values addObject:user.address];
        }
    }

    SimpleHashTable *myTable = [[SimpleHashTable alloc]initWithObjects:values forKeys:keys];

    [myTable show];
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
