//
//  parse.h
//  UserInfo
//
//  Created by Sean Reed on 6/16/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//

#ifndef UserInfo_parse_h
#define UserInfo_parse_h

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

int countNewLines(FILE *fp);

int wordCount(char *src, const char *delimiters);//counts # of words in string, with each word separated by token

void splitStringIntoArray(char* src, char* dest[], const char *delimiters);


#endif


