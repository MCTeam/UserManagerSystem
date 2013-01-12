//
//  MCUserManagerController.m
//  UserManagerSystem2
//
//  Created by Yingyi Dai on 12-12-30.
//  Copyright (c) 2012年 SCUT. All rights reserved.
//

#import "MCUserManagerController.h"

@implementation MCUserManagerController

static MCUserManagerController* sharedSingleton_ = nil;

@synthesize userModel;
@synthesize database;

#pragma mark -
#pragma mark single instance methods
+ (MCUserManagerController *)sharedInstance
{
    if (sharedSingleton_ == nil) {
        sharedSingleton_ = [[super allocWithZone:NULL] init];
        NSLog(@"create single user manager controller");
    }
    return sharedSingleton_;
}

+(id)allocWithZone:(NSZone *)zone
{
    return [[self sharedInstance] retain];
}

- (id)copy
{
    return self;
}

-(id)retain
{
    return self;
}

- (NSUInteger)retainCount
{
    return NSIntegerMax;
}

- (void)release
{
    //do nothing
}

- (id)init
{
    if (self = [super init]) {
        database = [MCDBController allocWithZone:NULL];
        userModel = [MCUserManagerModel allocWithZone:NULL];
        
        //init all users from database
        [self updataAllUser];
        
        //add observer to database and user model
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(insertSuccessMethod:) name:@"DBInsertSuccess" object:nil];
    }
    
    return self;
}

- (void)dealloc
{
    [database release];
    [userModel release];
    [super dealloc];
}

- (void)createNewUser:(NSString *)_name
{
    MCUser *newUser = [[MCUser alloc] initWithUserID:0 UserName:_name UserSex:@"unknown" totalGames:0 totalMoves:0 totalTimes:0];
    [database insertUser:newUser];
}

- (void)changeCurrentUser:(NSString *)_name
{
    for (MCUser* user in userModel.allUser) {
        if ([user.name isEqualToString:_name]) {
            userModel.currentUser = user;
        }
    }
    NSLog(@"change user");
}

- (void) insertSuccessMethod:(NSNotification*)_notification
{
    [self updataAllUser];
    
    NSString* name = [[NSString alloc] initWithString:[_notification.userInfo objectForKey:@"name"]];
    [self changeCurrentUser:name];
}

- (void)updataAllUser
{
    userModel.allUser = [database queryAllUser];
    NSLog(@"updata all user");
}

@end
