//
//  UserManagerSystemViewController.h
//  UserManagerSystem2
//
//  Created by Yingyi Dai on 12-12-29.
//  Copyright (c) 2012年 SCUT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserManagerSystemViewController : UIViewController
    <UITableViewDelegate, UITableViewDataSource>

@property (retain, nonatomic) IBOutlet UITableView *scoreTable;

@property (retain, nonatomic) IBOutlet UITextField *insertRecordUserNameField;
@property (retain, nonatomic) IBOutlet UITextField *insertRecordTimeField;
@property (retain, nonatomic) IBOutlet UITextField *insertRecordMoveField;

@property (retain, nonatomic) IBOutlet UILabel *currentUserLabel;

@property (retain, nonatomic) IBOutlet UILabel *totalGamesLabel;
@property (retain, nonatomic) IBOutlet UILabel *totalTimesLabel;
@property (retain, nonatomic) IBOutlet UILabel *totalMovesLabel;
@end
