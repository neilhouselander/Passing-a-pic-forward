//
//  NHPictureViewController.h
//  Passing A Picture Forward (User Data Challenge)
//
//  Created by Neil Houselander on 04/03/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NHPersonObject.h"

@interface NHPictureViewController : UIViewController 
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) NHPersonObject *personObject;

@end
