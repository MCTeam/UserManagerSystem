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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"] autorelease];
    
    return cell;
}
@end
