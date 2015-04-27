//
//  AppDelegate.m
//  FizzBuzz-Objc
//
//  Created by Joshua Howland on 8/22/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    for(int i = 1; i<=100; i++){
        BOOL buzzed = [self isBuzzed:i];
        BOOL fizzed = [self isFizzed:i];
        if(buzzed == true && fizzed == true){
            NSLog(@"FizzBuzz");
        } else if(buzzed == true && fizzed == false){
            NSLog(@"Buzz");
        } else if(buzzed == false && fizzed == true){
            NSLog(@"Fizz");
        } else {
            NSLog(@"%i", i);
        }
        
    }
    
    
    return YES;
}

- (BOOL)isBuzzed:(int)integer{
    NSString *intString = [NSString stringWithFormat:@"%i", integer];
    NSString *intThree = [NSString stringWithFormat:@"%i", 3];
    if(integer % 3 == 0){
        return true;
    } else if([intString containsString:intThree]){
        return true;
    } else {
        return false;
    }
}

- (BOOL)isFizzed:(int)integer{
    NSString *intString = [NSString stringWithFormat:@"%i", integer];
    NSString *intFive = [NSString stringWithFormat:@"%i", 5];
    if(integer % 5 == 0){
        return true;
    } else if([intString containsString:intFive]){
        return true;
    } else {
        return false;
    }
}


@end
