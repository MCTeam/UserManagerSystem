//
//  MCScore.h
//  UserManagerSystem2
//
//  Created by Yingyi Dai on 12-12-29.
//  Copyright (c) 2012年 SCUT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MCScore : NSObject

@property (nonatomic) NSInteger scoreID;
@property (nonatomic) NSInteger userID;
@property (nonatomic) NSInteger score;
@property (nonatomic) NSInteger move;
@property (nonatomic) double time;
@property (nonatomic) double speed;
@property (retain, nonatomic) NSString *date;

- (void) scoreID:(NSInteger)sID userID:(NSInteger)uID score:(NSInteger)SCORE move:(NSInteger)MOVE time:(double)TIME speed:(double)SPEED date:(NSString*)DATE;


@end
