//
//  WABaseTableViewController.h
//  WAAppRouter
//
//  Created by Marian Paul on 18/08/2015.
//  Copyright (c) 2015 Wasappli. All rights reserved.
//

#import "WABaseViewController.h"

@interface WABaseTableViewController : WABaseViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong, nonnull) UITableView *tableView;

@end
