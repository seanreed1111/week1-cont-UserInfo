//
//  parse.c
//  UserInfo
//
//  Created by Sean Reed on 6/16/14.
//  Copyright (c) 2014 seanreed.test. All rights reserved.
//


#include "parse.h"

int wordCount(char *str, const char *delimiters)
{
    int result = 0;// error code if it returns <= 0
    
    
    // need to check EACH of the allowed delimiters in turn
    
    char *token = strtok(str,delimiters);
    if ( token != NULL) {
        result++; // count first token
        
        while (strtok(NULL,delimiters) != NULL){
            result++;
        }
    }
    
    return result;
}

int countNewLines(FILE *fp)
{
    int c;
    int ct = 0;
    
    while ((c = getc(fp)) != EOF){
        if (c == '\n') {ct++;}
    }

    
    return ct;
}

void splitStringIntoArray(char* src, char* dest[], const char *delimiters)
{
    int ct = 0;
    
    // need to check EACH of the allowed delimiters in turn
    char *token = strtok(src,delimiters);
    if ( token != NULL) {
        dest[ct++]= token; // count first token
        
        while ((token = strtok(NULL,delimiters)) != NULL){
            dest[ct++] = token; //count up remaining tokens
        }
    }
    
}


