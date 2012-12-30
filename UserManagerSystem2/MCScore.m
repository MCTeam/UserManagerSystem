//
//  MCScore.m
//  UserManagerSystem2
//
//  Created by Yingyi Dai on 12-12-29.
//  Copyright (c) 2012年 SCUT. All rights reserved.
//

#import "MCScore.h"

@implementation MCScore

@synthesize scoreID;
@synthesize userID;
@synthesize score;
@synthesize move;
@synthesize time;
@synthesize speed;
@synthesize date;


- (void)dealloc
{
    [date release];
    [super dealloc];
}

- (void)scoreID:(NSInteger)sID userID:(NSInteger)uID score:(NSInteger)SCORE move:(NSInteger)MOVE time:(double)TIME speed:(double)SPEED date:(NSString *)DATE
{
    self.scoreID = sID;
    self.userID = uID;
    self.score = SCORE;
    self.move = MOVE;
    self.time = TIME;
    self.speed = SPEED;
    self.date = DATE;
}

@end
