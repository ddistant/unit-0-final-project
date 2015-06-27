//
//  main.m
//  TicTacToe
//
//  Created by Michael Kavouras on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface tictactoe : NSObject

- (void) printBoard(tictactoe *)spaces;

- (void) printLabel;

@property (nonatomic) NSMutableArray *spaces;

@end

@implementation tictactoe

- (void) printLabel {
    
    printf("**********************************\n");
    printf("*  TIC                           *\n");
    printf("*                                *\n");
    printf("*              TAC               *\n");
    printf("*                                *\n");
    printf("*                                *\n");
    printf("*                            TOE *\n");
    printf("**********************************\n");
}

- (void) printBoard(tictactoe *)spaces {
    
    if (self.spaces == nil) {
        self.spaces = [[NSMutableArray alloc] initWithObjects:@" ", @" ", @" ", @" ", @" ", @" ", @" ", @" ", @" ", nil];
    }
    
    [self.spaces addObject: nil];
    
    printf("\n\n");
    
    printf("%s| | \n-----\n | | \n-----\n | | \n", [_spaces[0] UTF8String]);
}

@end


@interface player : NSObject

- (void) setMove;

@end


@implementation player

- (void) setMove {
    
    
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        tictactoe *game1 = [[tictactoe alloc] init];
        [game1 printLabel];
        [game1 printBoard];
        
    }
    return 0;
}
