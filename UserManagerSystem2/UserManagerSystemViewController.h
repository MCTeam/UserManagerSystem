//
//  UserManagerSystemViewController.h
//  UserManagerSystem2
//
//  Created by Yingyi Dai on 12-12-29.
//  Copyright (c) 2012年 SCUT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MCUserManagerController.h"
#import "PopCreateUserViewController.h"
#import "PopChangeUserViewController.h"
#import "ScoreCell.h"

@interface UserManagerSystemViewController : UIViewController
    <UITableViewDelegate, UITableViewDataSource, UIPopoverControllerDelegate>
{
    MCUserManagerController *userManagerController;
}

@property (retain, nonatomic) IBOutlet UITableView *scoreTable;

@property (retain, nonatomic) IBOutlet UITextField *insertScoreTimeField;
@property (retain, nonatomic) IBOutlet UITextField *insertScoreMoveField;

@property (retain, nonatomic) IBOutlet UILabel *currentUserLabel;

@property (retain, nonatomic) IBOutlet UILabel *totalGamesLabel;
@property (retain, nonatomic) IBOutlet UILabel *totalTimesLabel;
@property (retain, nonatomic) IBOutlet UILabel *totalMovesLabel;

@property (retain, nonatomic) UIPopoverController *createUserPopover;
@property (retain, nonatomic) UIPopoverController *changeUserPopover;

- (IBAction)createUserPress:(id)sender;
- (IBAction)changeUserPress:(id)sender;
- (IBAction)insertScorePress:(id)sender;
- (void)updateUserInformation;
- (void)updateScoreInformation;
@end
