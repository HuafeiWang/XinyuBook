//
//  BookManager.h
//  XinyuBook
//
//  Created by Huafei Wang on 9/25/19.
//  Copyright © 2019 Huafei Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

NS_ASSUME_NONNULL_BEGIN

@interface BookManager : NSObject

@property(nonatomic, copy) NSArray<Book *> *books;

@end

NS_ASSUME_NONNULL_END
