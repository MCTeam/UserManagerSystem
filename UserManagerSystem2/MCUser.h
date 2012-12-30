//
//  MCUser.h
//  UserManagerSystem2
//
//  Created by Yingyi Dai on 12-12-29.
//  Copyright (c) 2012年 SCUT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MCUser : NSObject
@property (nonatomic) NSInteger userID;
@property (retain, nonatomic) NSString *name;
@property (retain, nonatomic) NSString *sex;
@property (nonatomic) NSInteger totalGames;
@property (nonatomic) NSInteger totalMoves;
@property (nonatomic) double totalTimes;     //seconds

- (void)User:(NSInteger)ID UserName:(NSString*)NAME UserSex:(NSString*)Sex totalGames:(NSInteger)GAMES totalMoves:(NSInteger)MOVES totalTimes:(double)TIMES;

@end
