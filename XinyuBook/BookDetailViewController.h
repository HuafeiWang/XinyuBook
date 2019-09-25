//
//  BookDetailViewController.h
//  XinyuBook
//
//  Created by Huafei Wang on 9/25/19.
//  Copyright © 2019 Huafei Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book.h"

NS_ASSUME_NONNULL_BEGIN

@interface BookDetailViewController : UIViewController

-(instancetype)initWithBook:(Book *)book;

@end

NS_ASSUME_NONNULL_END
