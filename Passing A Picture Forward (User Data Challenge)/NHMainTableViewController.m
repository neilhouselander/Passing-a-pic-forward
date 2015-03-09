//
//  NHMainTableViewController.m
//  Passing A Picture Forward (User Data Challenge)
//
//  Created by Neil Houselander on 04/03/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import "NHMainTableViewController.h"
#import "NHUserData.h"
#import "NHPersonObject.h"
#import "NHPictureViewController.h"
#import "NHDetailViewController.h"

@interface NHMainTableViewController ()

@end

@implementation NHMainTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.usersArray = [[NSMutableArray alloc]init];
    
    for (NSDictionary *userDictionary in [NHUserData users])
    {
        NHPersonObject *person = [[NHPersonObject alloc]initWithPeopleData:userDictionary];
        [self.usersArray addObject:person];
    }
    //ENGLISH
    //create a new mutable array & set to the mutable array property already created
    //extract just dictionaries from the array of dictionaries retruned from the users method
    //for each dictionary extracted set the person object properties to that of the selected dictionary using initWithPeople initializer
    //add the person object to the new arrat created in step 1
    //end result a new array of people objects populated with the contents of the dictionary
    
      NSLog(@"%@", self.usersArray);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([sender isKindOfClass:[UITableViewCell class]])
    {
        if ([segue.destinationViewController isKindOfClass:[NHPictureViewController class]])
        {
            NHPictureViewController *nextViewController = segue.destinationViewController;
            NSIndexPath *path = [self.tableView indexPathForCell:sender];
            NHPersonObject *selectedObject = [self.usersArray objectAtIndex:path.row];
            nextViewController.personObject = selectedObject;
            
            //ENGLISH
            //set the picture view controller class called nextViewController to the destination view controller
            //find out what cell was seleted using indexpath - give it a name and make equal to the table view - indexpathforcell
            //create a new person object & set equal to whichever person object in the array depending on the row selected
            //take the next view controller and set the property declared in that class, to the person object selected in last line
        }
    }
    if ([sender isKindOfClass:[NSIndexPath class]])
         {
             if ([segue.destinationViewController isKindOfClass:[NHDetailViewController class]])
             {
                 NHDetailViewController *nextViewController = segue.destinationViewController;
                 NSIndexPath *path = sender;
                 NHPersonObject *selectedObject = [self.usersArray objectAtIndex:path.row];
                 nextViewController.personObject = selectedObject;
             }
         }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [self.usersArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"userCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    //create a local person object
    //make it equal the users array object number = 0, then 1, then 2 etc.
    //set the cell text & image to the properties of the local variable
    
    NHPersonObject *thePerson = self.usersArray [indexPath.row];
    
    cell.textLabel.text = thePerson.userName;
    cell.imageView.image = thePerson.userProfilePicture;
   // cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", thePerson.age];
    
    return cell;
}

#pragma mark UITableView Delegates

-(void) tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"push to detail" sender:indexPath];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
