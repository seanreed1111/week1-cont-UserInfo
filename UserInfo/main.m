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
    
    // count the number of newlines in each file
    //read each newline from file
    //split newline into words
    // load words into new UserInfo object array
    // repeat until you reach EOF
    
    
    FILE *fp;
    NSInteger ct;
    NSMutableArray *arr =[[NSMutableArray alloc] init];
    
    const char filename[] = "/Users/seanreed/iosProjects/UserInfo/UserInfo/userinfodata.txt"; // absolute path needed
    
    if((fp = fopen(filename, "r"))){
        
        ct = countNewLines(fp);
        fclose(fp);
        
        NSLog(@"The file has %zd lines\n", ct);
    }

    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
