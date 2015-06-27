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
    
    //       top            mid         bottom
    printf(" | | \n-----\n | | \n-----\n | | \n");
    
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        tictactoe *game1 = [[tictactoe alloc] init];
        [game1 printBoard];
        
    }
    return 0;
}
