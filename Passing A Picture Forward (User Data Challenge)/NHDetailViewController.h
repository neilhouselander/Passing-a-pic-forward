//
//  NHDetailViewController.h
//  Passing A Picture Forward (User Data Challenge)
//
//  Created by Neil Houselander on 09/03/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NHPersonObject.h"

@interface NHDetailViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *theDetailTableView;
@property (strong, nonatomic) NHPersonObject *personObject;

@end
