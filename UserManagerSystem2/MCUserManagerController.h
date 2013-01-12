//
//  MCUserManagerController.h
//  UserManagerSystem2
//
//  Created by Yingyi Dai on 12-12-30.
//  Copyright (c) 2012年 SCUT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MCDBController.h"
#import "MCUser.h"
#import "MCScore.h"
#import "MCUserManagerModel.h"

@interface MCUserManagerController : NSObject{
    
}

@property (nonatomic, retain) MCDBController* database;
@property (nonatomic, retain) MCUserManagerModel* userModel;

+ (MCUserManagerController*) sharedInstance;

- (void) createNewUser:(NSString*)_name;
- (void) changeCurrentUser:(NSString*)_name;
- (void) updataAllUser;
- (void) updataCurrentUser;

@end
