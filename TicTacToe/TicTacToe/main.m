//
//  main.m
//  TicTacToe
//
//  Created by Michael Kavouras on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface tictactoe : NSObject

- (void) printBoard;

@end

@implementation tictactoe

- (void) printBoard {
    
    NSString *spaceTopLeft = @" ";
    NSString *spaceTopMid = @" ";
    NSString *spaceTopRight = @" ";
    
    NSString *spaceMidLeft = @" ";
    NSString *spaceMidMid = @" ";
    NSString *spaceMidRight = @" ";
    
    NSString *spaceBottomLeft = @" ";
    NSString *spaceBottomMid = @" ";
    NSString *spaceBottomRight = @" ";
    
    //       top            mid         bottom
    printf("%s|%s|%s\n-----\n%s|%s|%s\n-----\n%s|%s|%s\n", [spaceTopLeft UTF8String], [spaceTopMid UTF8String], [spaceTopRight UTF8String], [spaceMidLeft UTF8String], [spaceMidMid UTF8String], [spaceMidRight UTF8String], [spaceBottomLeft UTF8String], [spaceBottomMid UTF8String], [spaceBottomRight UTF8String]);

    
    
    
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        tictactoe *game1 = [[tictactoe alloc] init];
        [game1 printBoard];
        
//        NSString *emptySpace = @" ";
//        printf("this is where the empty spa%sce goes:", [emptySpace UTF8String]);
    }
    return 0;
}
