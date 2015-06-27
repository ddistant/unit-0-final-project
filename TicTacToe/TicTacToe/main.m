//
//  main.m
//  TicTacToe
//
//  Created by Michael Kavouras on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@end


@implementation Player

@end

@interface Computer : NSObject

@end


@implementation Computer

@end

@interface Tictactoe : NSObject

- (void) printLabel;

- (void) printBoard;

- (void) setMove:(int)move;


@property (nonatomic) NSMutableArray *spaces;

@property (nonatomic) Player * playerX;

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

- (void) printBoard {
    
    if (self.spaces == nil) {
        self.spaces = [[NSMutableArray alloc] initWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", nil];
    }
    
    printf("\n\n");
    
    printf("%s|%s|%s\n-----\n%s|%s|%s\n-----\n%s|%s|%s\n", [_spaces[0] UTF8String], [_spaces[1] UTF8String], [_spaces[2] UTF8String], [_spaces[3] UTF8String], [_spaces[4] UTF8String],[_spaces[5] UTF8String],[_spaces[6] UTF8String], [_spaces[7] UTF8String], [_spaces[8] UTF8String]);
}

- (void) setMove:(int)i {
    
    if ([_spaces[i] isEqualToString:_spaces[i]]) {
        
        [_spaces replaceObjectAtIndex:_spaces[i] withObject: 0];
    }
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int userInput;
        
        Tictactoe *game1 = [[Tictactoe alloc] init];
        [game1 printLabel];
        printf("\nHello Player 'X'\nWhere would you like to play: ");
        [game1 printBoard];
        scanf("\n%d",&userInput);
        
        [game1 setMove:3];
        
        
        
    }
    return 0;
}
