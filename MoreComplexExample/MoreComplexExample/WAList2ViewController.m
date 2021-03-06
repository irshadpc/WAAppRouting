//
//  WAList2ViewController.m
//  MoreComplexExample
//
//  Created by Marian Paul on 19/08/2015.
//  Copyright (c) 2015 Wasappli. All rights reserved.
//

#import "WAList2ViewController.h"

@implementation WAList2ViewController

static NSString *CellIdentifier = @"CellIdentifier";

- (instancetype)init {
    self = [super init];
    if (self) {
        self.title = @"List 2";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
    
    UIBarButtonItem *showModal = [[UIBarButtonItem alloc] initWithTitle:@"Show modal"
                                                                   style:UIBarButtonItemStyleDone
                                                                  target:self
                                                                  action:@selector(showModal)];
    self.navigationItem.rightBarButtonItem = showModal;
}

- (void) showModal {
    [(AppDelegate *)[[UIApplication sharedApplication] delegate] goTo:@"morecomplexexample://modal/"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.textLabel.text = [NSString stringWithFormat:@"Test id %ld", (long)indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    [(AppDelegate *)[[UIApplication sharedApplication] delegate] goTo:@"morecomplexexample://list2/%ld?extraParam1=1&extraParam2=toto", (long)indexPath.row];
}

@end
