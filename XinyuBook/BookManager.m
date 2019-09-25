//
//  BookManager.m
//  XinyuBook
//
//  Created by Huafei Wang on 9/25/19.
//  Copyright © 2019 Huafei Wang. All rights reserved.
//

#import "BookManager.h"

@implementation BookManager

- (NSArray<Book *> *)books
{
    if (_books == nil) {
        Book *book1 = [[Book alloc] init];
        book1.title = @"Frank is the Best";
        book1.author = @"Frank";
        
        Book *book2 = [[Book alloc] init];
        book2.title = @"Xinyu is Good Too";
        book2.author = @"Xinyu";
        
        _books = @[book1, book2];
    }
    
    return _books;
}

@end
