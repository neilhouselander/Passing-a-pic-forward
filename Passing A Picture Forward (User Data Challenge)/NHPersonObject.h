//
//  NHPersonObject.h
//  Passing A Picture Forward (User Data Challenge)
//
//  Created by Neil Houselander on 04/03/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NHPersonObject : NSObject

@property (strong, nonatomic) NSString *userName;
@property (strong, nonatomic) NSString *userEmail;
@property (strong, nonatomic) NSString *userPassword;
@property (nonatomic) int age;
@property (strong, nonatomic) UIImage *userProfilePicture;

-(id) initWithPeopleData:(NSDictionary *) peopleDictionary;

@end
