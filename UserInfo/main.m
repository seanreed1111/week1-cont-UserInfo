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

int main(int argc, char * argv[])
{
    
    UserInfo *myInfo = [[UserInfo alloc] initWithFirstName:@"Sean"
                lastName:@"Reed"
                address:@"1313 Mockingbird Lane"];
    
    [myInfo printUserInfo];
    

    
    NSString *fileLocation = @"/Users/seanreed/iosProjects/UserInfo/UserInfo/userinfodata.txt"; // absolute path needed
    

    
    NSString *fileContents = [NSString stringWithContentsOfFile:fileLocation encoding:NSUTF8StringEncoding error:NULL];
  
    NSArray *fileByLines = [[NSArray alloc] init];
    
    fileByLines = [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    
    NSMutableArray *inputRecords = [[NSMutableArray alloc]init];
    NSMutableArray *output = [[NSMutableArray alloc]init];
    
    for (NSString *line in fileByLines)
    {
        NSLog(@"%@\n", line);
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
    NSLog(@"%@", myDictionary);

    
//    24. Implement a simple hash table
//    • Define the interface first
//    • Implement the methods
    

    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
