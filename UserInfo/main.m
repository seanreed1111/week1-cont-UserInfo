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
    
//    for (int i = 0; i < inputRecords.count-1; i++) {
//        UserInfo *newUser = [[UserInfo alloc]init];
//        newUser.firstName = inputRecords[i][0];
//        newUser.lastName = inputRecords[i][1];
//        newUser.address  = inputRecords[i][2];
//        [output addObject:newUser];
//    }
    
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
    
    NSLog(@"%@", output);

//
//    {
//
//    }
    
    // now create a new UserInfo instance for each record in records using the data given there

    
    // print each record
 //   for(NSArray *record in inputRecords)
     // take each record and use it to create a UserInfo object
     // put the UserInfo object into the output array
//        [ output addObject:[UserInfo initWithArray:record]];

    

    
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
