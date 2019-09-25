//
//  BookDetailViewController.m
//  XinyuBook
//
//  Created by Huafei Wang on 9/25/19.
//  Copyright © 2019 Huafei Wang. All rights reserved.
//

#import "BookDetailViewController.h"

@interface BookDetailViewController ()

@property(nonatomic, strong) Book *book;
@property(nonatomic, strong) UILabel *nameLabel;
@property(nonatomic, strong) UILabel *authorLabel;

@end

@implementation BookDetailViewController

#pragma mark - Lifecycle

- (instancetype)initWithBook:(Book *)book
{
    self = [super init];
    if (self) {
        self.book = book;
        self.nameLabel = [[UILabel alloc] init];
        self.authorLabel = [[UILabel alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    self.view.backgroundColor = UIColor.whiteColor;
    self.nameLabel.text = self.book.title;
    self.authorLabel.text = self.book.author;
    [self.view addSubview:self.nameLabel];
    [self.view addSubview:self.authorLabel];
    [self setupLayoutConstraints];
}

#pragma mark - Layout Constraints

- (void)setupLayoutConstraints
{
    self.nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.authorLabel.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint *constraint1 = [self.nameLabel.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor];
    NSLayoutConstraint *constraint2 = [self.nameLabel.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor];
    NSLayoutConstraint *constraint3 = [self.authorLabel.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor];
    NSLayoutConstraint *constraint4 = [self.authorLabel.topAnchor constraintEqualToAnchor:self.nameLabel.bottomAnchor constant:20];
    
    NSArray<NSLayoutConstraint *> *constraints = @[constraint1, constraint2, constraint3, constraint4];
    
    for (NSLayoutConstraint *constraint in constraints) {
        constraint.active = YES;
    }
}

@end
