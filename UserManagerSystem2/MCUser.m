//
//  MCUser.m
//  UserManagerSystem2
//
//  Created by Yingyi Dai on 12-12-29.
//  Copyright (c) 2012年 SCUT. All rights reserved.
//

#import "MCUser.h"

@implementation MCUser

@synthesize userID;
@synthesize name;
@synthesize sex;
@synthesize totalGames;
@synthesize totalMoves;
@synthesize totalTimes;

- (void)User:(NSInteger)ID UserName:(NSString *)NAME UserSex:(NSString *)SEX totalGames:(NSInteger)GAMES totalMoves:(NSInteger)MOVES totalTimes:(double)TIMES
{
    self.userID = ID;
    self.name = NAME;
    self.sex = SEX;
    self.totalGames = GAMES;
    self.totalMoves = MOVES;
    self.totalTimes = TIMES;
    
}

-(void)dealloc
{
    [sex release];
    [name release];
    [super dealloc];
}

@end
