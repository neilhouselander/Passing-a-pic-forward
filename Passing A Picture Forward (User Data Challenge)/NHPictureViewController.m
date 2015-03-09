//
//  NHPictureViewController.m
//  Passing A Picture Forward (User Data Challenge)
//
//  Created by Neil Houselander on 04/03/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import "NHPictureViewController.h"

@interface NHPictureViewController ()

@end

@implementation NHPictureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imageView = [[UIImageView alloc] initWithImage:self.personObject.userProfilePicture];
    [self.view addSubview:self.imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
