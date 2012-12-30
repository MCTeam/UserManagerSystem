//
//  MCUserCalculator.m
//  UserManagerSystem2
//
//  Created by Yingyi Dai on 12-12-30.
//  Copyright (c) 2012年 SCUT. All rights reserved.
//

#import "MCUserCalculator.h"

@implementation MCUserCalculator

-(NSInteger)calculateScoreForMove:(NSInteger)move Time:(double)time
{
    //expression of calculating the total score for each time
    return 1;
}

-(double)calculateSpeedForMove:(NSInteger)move Time:(double)time
{
    return (double)move/time;
}

@end
