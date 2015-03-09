//
//  NHDetailViewController.m
//  Passing A Picture Forward (User Data Challenge)
//
//  Created by Neil Houselander on 09/03/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import "NHDetailViewController.h"

@interface NHDetailViewController ()

@end

@implementation NHDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark TableView Data Source

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier =@"DataCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    switch (indexPath.row)
    {
        case 0:
            cell.textLabel.text = @"User Name: ";
            cell.detailTextLabel.text = self.personObject.userName;
            break;
        case 1:
            cell.textLabel.text = @"Email Address:";
            cell.detailTextLabel.text = self.personObject.userEmail;
            break;
        case 2:
            cell.textLabel.text = @"Password:";
            cell.detailTextLabel.text = self.personObject.userPassword;
            break;
        case 3:
            cell.textLabel.text = @"Age:";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i",self.personObject.age];   
            break;
            
        default:
            break;
    }
    
    
    return cell;
    
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  4;
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
