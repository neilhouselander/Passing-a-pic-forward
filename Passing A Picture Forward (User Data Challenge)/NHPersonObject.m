//
//  NHPersonObject.m
//  Passing A Picture Forward (User Data Challenge)
//
//  Created by Neil Houselander on 04/03/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import "NHPersonObject.h"
#import "NHUserData.h"

@implementation NHPersonObject

//override standard init method

-(id) init
{
    self = [self initWithPeopleData:nil];
    
    return self;
}

//create method to add the dictionary items to this class object
-(id) initWithPeopleData:(NSDictionary *)peopleDictionary
{
    self.userName = [peopleDictionary objectForKey:USER_NAME];
    self.userEmail = [peopleDictionary objectForKey:USER_EMAIL];
    self.userPassword = [peopleDictionary objectForKey:USER_PASSWORD];
    self.age = [[peopleDictionary objectForKey:USER_AGE]intValue];
    self.userProfilePicture = [peopleDictionary objectForKey:USER_PROFILE_PICTURE];
    
    return self;
    
}


@end
