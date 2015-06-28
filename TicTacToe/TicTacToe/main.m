//
//  main.m
//  TicTacToe
//
//  Created by Michael Kavouras on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject // Player X uses 'x'

@end


@implementation Player

@end


@interface Computer : Player // Computer uses 'o'

- (void) computerChooseMove:(int)c;

@end


@implementation Computer
- (void) computerChooseMove:(int)c {
}
@end



@interface Tictactoe : NSObject

- (void) printLabel;

- (void) printBoard;

- (void) playerSelect;

- (void) chooseMove:(int)move;

- (void) computerChooseMove:(int)c;

- (BOOL) endGame;


@property (nonatomic) NSMutableArray *spaces; //Original spaces in the table

@property (nonatomic) NSMutableArray *startingSpaces;

@property (nonatomic) Player * playerX;

@property (nonatomic) Computer *computer;
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


- (void) playerSelect { // Fancy wallpaper for player select
    
    printf("**********************************\n");
    printf("*                                *\n");
    printf("*  0) Play computer              *\n");
    printf("*                                *\n");
    printf("*                                *\n");
    printf("*  1) 2-player mode              *\n");
    printf("*                                *\n");
    printf("**********************************\n");
    
    int userInput;
    
    if (userInput == 1) {
        
    }
    
}

- (void) printBoard {

    if (self.spaces == nil) {
        self.spaces = [[NSMutableArray alloc] initWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", nil];
        self.startingSpaces = [[NSMutableArray alloc] initWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8",@"9", @"10", @"11", nil];
    }
    
    printf("\n\n");
    
    //Tic Tac Toe Board
    
    printf("%s|%s|%s|%s\n--------\n%s|%s|%s|%s\n--------\n%s|%s|%s|%s\n", [_spaces[0] UTF8String], [_spaces[1] UTF8String], [_spaces[2] UTF8String], [_spaces[3] UTF8String], [_spaces[4] UTF8String],[_spaces[5] UTF8String],[_spaces[6] UTF8String], [_spaces[7] UTF8String], [_spaces[8] UTF8String],[_spaces[9] UTF8String], [_spaces[10] UTF8String], [_spaces[11] UTF8String]);
}


//First Player "X" if statement

- (void) chooseMove:(int)i {
    
    if ([_spaces[i] isEqualToString:_startingSpaces[i]]) {
        
        [_spaces replaceObjectAtIndex: i withObject: @"x"];
    }
    
    [self printBoard];
}

//Second Player "O" if statement

- (void) chooseMove2:(int)a  {
    
    if ([_spaces[a] isEqualToString:_startingSpaces[a]]) {
        
        [_spaces replaceObjectAtIndex: a withObject: @"o"];
    }
    
    [self printBoard]; //Prints tic tac toe board
    
}

    
//Computer Player "0" if statement

- (void) computerChooseMove:(int)c {
    
    BOOL moveChosen = NO;
    
    while (!moveChosen) {
        
        if ([_spaces[c] isEqualToString:_startingSpaces[c]]) {
            
            [_spaces replaceObjectAtIndex: c withObject: @"o"];
            
            [self printBoard];
            
            moveChosen = YES;
            
        } else {
            
            printf("Hmmm.....");
            
            [self.computer computerChooseMove:arc4random_uniform(9)];
            
            [self printBoard];
            
            break;
            
        }
        
    }
    
}



@end

// Wining combos is they are the same thing they won
//check if anyone one, check if all of the pieces in places
//Top(0,1,2) Middle (3,4,5) Bottom (6,7,8) Rightdown (2,5,8), Left Down (0,3,6), Middle Down (1,4,7)
// TopleftToRightbottom (0,4,8) ToprightToLeftBottom (2,4,6)




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int userInput;
        Tictactoe *game1 = [[Tictactoe alloc] init];
        
        [game1 printLabel];
        [game1 playerSelect];
        [game1 printBoard];
        
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

            
            printf("\nHello Computer\nWhere would you like to play: ");
            sleep(3);
            [game1 computerChooseMove:arc4random_uniform(9)];

        }
        
    }
    return 0;
}
