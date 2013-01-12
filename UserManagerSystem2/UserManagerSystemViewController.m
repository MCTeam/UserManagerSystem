//
//  UserManagerSystemViewController.m
//  UserManagerSystem2
//
//  Created by Yingyi Dai on 12-12-29.
//  Copyright (c) 2012年 SCUT. All rights reserved.
//

#import "UserManagerSystemViewController.h"

@interface UserManagerSystemViewController ()

@end

@implementation UserManagerSystemViewController
@synthesize scoreTable;
@synthesize insertRecordUserNameField;
@synthesize insertRecordTimeField;
@synthesize insertRecordMoveField;
@synthesize currentUserLabel;
@synthesize totalGamesLabel;
@synthesize totalTimesLabel;
@synthesize totalMovesLabel;
@synthesize createUserPopover;
@synthesize changeUserPopover;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    userManagerController = [MCUserManagerController allocWithZone:NULL];
    
    //popover
    PopCreateUserViewController *contentForCreateUser = [[PopCreateUserViewController alloc] init];
    
    createUserPopover = [[UIPopoverController alloc] initWithContentViewController:contentForCreateUser];
    createUserPopover.popoverContentSize = CGSizeMake(320., 216.);
    createUserPopover.delegate = self;
    
    PopChangeUserViewController *contentForChangeUser = [[PopChangeUserViewController alloc] init];
    
    changeUserPopover = [[UIPopoverController alloc] initWithContentViewController:contentForChangeUser];
    changeUserPopover.popoverContentSize = CGSizeMake(320., 216.);
    changeUserPopover.delegate = self;
    
    //user information
    currentUserLabel.text = userManagerController.userModel.currentUser.name;
    totalGamesLabel.text = [[NSString alloc] initWithFormat:@"%d",userManagerController.userModel.currentUser.totalGames];
    totalMovesLabel.text = [[NSString alloc] initWithFormat:@"%d",userManagerController.userModel.currentUser.totalMoves];
    totalTimesLabel.text = [[NSString alloc] initWithFormat:@"%d",userManagerController.userModel.currentUser.totalTimes];
}

- (void)viewDidUnload
{
    [self setScoreTable:nil];
    [self setInsertRecordUserNameField:nil];
    [self setInsertRecordTimeField:nil];
    [self setInsertRecordMoveField:nil];
    [self setCurrentUserLabel:nil];
    [self setTotalGamesLabel:nil];
    [self setTotalTimesLabel:nil];
    [self setTotalMovesLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (void)dealloc {
    [scoreTable release];
    [insertRecordUserNameField release];
    [insertRecordTimeField release];
    [insertRecordMoveField release];
    [currentUserLabel release];
    [totalGamesLabel release];
    [totalTimesLabel release];
    [totalMovesLabel release];
    [super dealloc];
}

#pragma mark -
#pragma mark Tableview delegates

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"] autorelease];
    
    return cell;
}


#pragma mark -
#pragma mark Popover controller delegates

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController
{
    
    [self changeUserUpdataInformation];
    
    if (popoverController == createUserPopover) {
        
    }
    
    if (popoverController == changeUserPopover) {
        
    }
}

#pragma mark -
#pragma mark user methods
- (void)createUserPress:(id)sender
{
    UIButton *tapbtn = (UIButton*) sender;
    
    [createUserPopover presentPopoverFromRect:tapbtn.frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
}

- (void)changeUserPress:(id)sender
{
    UIButton *tapbtn = (UIButton*) sender;
    
    [changeUserPopover presentPopoverFromRect:tapbtn.frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
}


- (void) changeUserUpdataInformation
{
    //user information
    currentUserLabel.text = userManagerController.userModel.currentUser.name;
    totalGamesLabel.text = [[NSString alloc] initWithFormat:@"%d",userManagerController.userModel.currentUser.totalGames];
    totalMovesLabel.text = [[NSString alloc] initWithFormat:@"%d",userManagerController.userModel.currentUser.totalMoves];
    totalTimesLabel.text = [[NSString alloc] initWithFormat:@"%d",userManagerController.userModel.currentUser.totalTimes];
}

@end
