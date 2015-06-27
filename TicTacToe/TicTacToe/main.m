//
//  main.m
//  TicTacToe
//
//  Created by Michael Kavouras on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject // Player One Starts with X

@end


@implementation Player

@end

@interface Computer : NSObject // Computer automatic plays in one player mode

@end


@implementation Computer

@end

@interface Tictactoe : NSObject

- (void) printLabel;

- (void) printBoard;

- (void) chooseMove:(int)move;


@property (nonatomic) NSMutableArray *spaces; //Original spaces in the table

@property (nonatomic) NSMutableArray *startingSpaces;

@property (nonatomic) Player * playerX;

@end

@implementation Tictactoe

- (void) printLabel { // fancy wallpaper in the beginning
    
    printf("**********************************\n");
    printf("*  TIC                           *\n");
    printf("*                                *\n");
    printf("*              TAC               *\n");
    printf("*                                *\n");
    printf("*                                *\n");
    printf("*                            TOE *\n");
    printf("**********************************\n");
}

- (void) printBoard { // Tic Tac Toe Table INPUTS
    
    if (self.spaces == nil) {
        self.spaces = [[NSMutableArray alloc] initWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", nil];
        self.startingSpaces = [[NSMutableArray alloc] initWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", nil];
    }
    
    printf("\n\n");
    
    //Tic Tac Toe Board
    
    printf("%s|%s|%s\n-----\n%s|%s|%s\n-----\n%s|%s|%s\n", [_spaces[0] UTF8String], [_spaces[1] UTF8String], [_spaces[2] UTF8String], [_spaces[3] UTF8String], [_spaces[4] UTF8String],[_spaces[5] UTF8String],[_spaces[6] UTF8String], [_spaces[7] UTF8String], [_spaces[8] UTF8String]);
}
//First Player "X" if statement

- (void) chooseMove:(int)i {
    
    if ([_spaces[i] isEqualToString:_startingSpaces[i]]) {
        
        [_spaces replaceObjectAtIndex: i withObject: @"X"];
    }
    
    [self printBoard];
}
//Second Player "O" if statement

- (void) chooseMove2:(int)a  {
    
    if ([_spaces[a] isEqualToString:_startingSpaces[a]]) {
        
        [_spaces replaceObjectAtIndex: a withObject: @"O"];
    }
    
    [self printBoard]; //Prints tic tac toe board
    
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int userInput;
        Tictactoe *game1 = [[Tictactoe alloc] init];
        
        [game1 printLabel];
        
        //While loop for repeat
        
        while (game1) {
        [game1 printBoard];
        printf("\nHello Player 'X'\nWhere would you like to play: "); // For First Player
        scanf("\n%d",&userInput);
        [game1 chooseMove:userInput];
        
            [game1 printBoard];
            printf("\nHello Player 'O'\nWhere would you like to play: "); // For Second Player
            scanf("\n%d", &userInput);
            [game1 chooseMove2:userInput];
        }
        
    }
    return 0;
}
