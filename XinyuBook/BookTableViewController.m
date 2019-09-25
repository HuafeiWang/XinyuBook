//
//  BookTableViewController.m
//  XinyuBook
//
//  Created by Huafei Wang on 9/25/19.
//  Copyright © 2019 Huafei Wang. All rights reserved.
//

#import "BookTableViewController.h"
#import "BookManager.h"
#import "BookDetailViewController.h"

static NSString * const kCellReuseIdentifier = @"bookTableViewCell";

@interface BookTableViewController()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *bookTableView;
@property (nonatomic, strong) BookManager *bookManager;

@end

@implementation BookTableViewController

#pragma mark - Lifecycle

- (instancetype)init {
    self = [super init];
    if (self) {
        self.bookTableView = [[UITableView alloc] init];
        self.bookManager = [[BookManager alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.bookTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCellReuseIdentifier];
    self.bookTableView.dataSource = self;
    self.bookTableView.delegate = self;
    [self.view addSubview:self.bookTableView];
    [self setupLayoutConstraints];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.bookManager.books.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.bookTableView dequeueReusableCellWithIdentifier:kCellReuseIdentifier
                                                                     forIndexPath:indexPath];
    cell.textLabel.text = self.bookManager.books[indexPath.row].title;
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Book *book = self.bookManager.books[indexPath.row];
    BookDetailViewController *bookDetailViewController = [[BookDetailViewController alloc] initWithBook:book];
    [self.navigationController pushViewController:bookDetailViewController animated:YES];
}

#pragma mark - Layout Constraints

- (void)setupLayoutConstraints {
    // self.view.translatesAutoresizingMaskIntoConstraints = NO;
    self.bookTableView.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSArray<NSLayoutConstraint *> *constraints = [NSArray arrayWithObjects:[self.bookTableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
                                                [self.bookTableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
                                                  [self.bookTableView.topAnchor constraintEqualToAnchor:self.view.topAnchor],
                                                  [self.bookTableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor]
                                                , nil];
    
    for (NSLayoutConstraint *constraint in constraints) {
        constraint.active = YES;
    }
}

@end
