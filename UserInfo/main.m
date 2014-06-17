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
    

    
    NSString *location = @"/Users/seanreed/iosProjects/UserInfo/UserInfo/userinfodata.txt"; // absolute path needed
    

    
    NSString *contents = [NSString stringWithContentsOfFile:location encoding:NSUTF8StringEncoding error:NULL];
  
    NSArray *lines = [[NSArray alloc] init];
    
    lines = [contents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    
    for (NSString *line in lines){
        NSLog(@"%@\n", line);
    }
    
    // now separate each line into firstName, lastName, and the rest of the line as the address.
    
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
