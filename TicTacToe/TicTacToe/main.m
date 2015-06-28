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

- (void) computerChooseMove;

@end


@implementation Computer

- (void) computerChooseMove {
    
}

@end

@interface Tictactoe : NSObject

- (void) printLabel;

- (void) printBoard;

- (void) playerSelect;

- (void) chooseMove:(int)move;

- (void) computerChooseMove;

- (BOOL) endGame;

@property (nonatomic) NSMutableArray *spaces;

@property (nonatomic) NSArray *startingSpaces;

@property (nonatomic) NSMutableArray *computerSpaces;

@property (nonatomic) Player * playerX;

@property (nonatomic) Computer *computer;

@end

@implementation Tictactoe

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

- (void) playerSelect {
    
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
        self.spaces = [[NSMutableArray alloc] initWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", nil];
        self.startingSpaces = [[NSArray alloc] initWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", nil];
    }
    
    printf("\n\n");
    
    //Tic Tac Toe Board
    
    printf("%s|%s|%s\n-----\n%s|%s|%s\n-----\n%s|%s|%s\n", [_spaces[0] UTF8String], [_spaces[1] UTF8String], [_spaces[2] UTF8String], [_spaces[3] UTF8String], [_spaces[4] UTF8String],[_spaces[5] UTF8String],[_spaces[6] UTF8String], [_spaces[7] UTF8String], [_spaces[8] UTF8String]);
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
    
    [self printBoard];
    
}

- (void) computerChooseMove {
    
    int c;
    
    BOOL moveChosen = NO;
    
    while (!moveChosen) {
        
        c = arc4random_uniform(9);
        
        if ([_spaces[c] isEqualToString:_startingSpaces[c]]) {
            
            [_spaces replaceObjectAtIndex: c withObject: @"o"];
            
            [self printBoard];
            
            moveChosen = YES;
            
        } else {
            
            printf("Hmmm.....");
            
            
        }
        printf("\n%s", moveChosen ? "yes":"no");
    }
    
}

-(BOOL) endGame {
    for (int i =0; i < [_spaces count]; i++) {
        
        
    }
    return YES;
}


@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int userInput;
        Tictactoe *game1 = [[Tictactoe alloc] init];
        
        [game1 printLabel];
        [game1 playerSelect];
        [game1 printBoard];
        
        //While loop for repeat
        
        while (game1) {
            
            printf("\nHello Player 'X'\nWhere would you like to play: ");
            scanf("\n%d",&userInput);
            [game1 chooseMove:userInput];
            
//            printf("\nHello Player 'O'\nWhere would you like to play: ");
//            scanf("\n%d", &userInput);
//            [game1 chooseMove2:userInput];
            
            printf("\nHello Computer\nWhere would you like to play: ");
            sleep(2);
            [game1 computerChooseMove];
        }
        
    }
    return 0;
}
