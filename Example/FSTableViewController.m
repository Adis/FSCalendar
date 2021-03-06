//
//  FSTableViewController.m
//  FSCalendar
//
//  Created by DingWenchao on 6/25/15.
//  Copyright (c) 2015 =. All rights reserved.
//

#import "FSTableViewController.h"
#import "LoadViewExampleViewController.h"
#import "ViewDidLoadExampleViewController.h"
#import "MultipleSelectionViewController.h"
#import "FullScreenExampleViewController.h"
#import "DelegateAppearanceViewController.h"

@implementation FSTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleBordered target:nil action:nil];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        DelegateAppearanceViewController *viewController = [[DelegateAppearanceViewController alloc] init];
        [self.navigationController pushViewController:viewController animated:YES];
    } else if (indexPath.row == 1) {
        FullScreenExampleViewController *viewController = [[FullScreenExampleViewController alloc] init];
        [self.navigationController pushViewController:viewController animated:YES];
    } else if (indexPath.row == 2) {
        MultipleSelectionViewController *viewController = [[MultipleSelectionViewController alloc] init];
        [self.navigationController pushViewController:viewController animated:YES];
    } else if (indexPath.row == 3) {
        // FSCalendarScope Example
        return;
        
    } else if (indexPath.row == 4) {
        // Storyboard Example
        return;
    } else if (indexPath.row == 5) {
        
        // LoadView Example
        LoadViewExampleViewController *viewController = [[LoadViewExampleViewController alloc] init];
        [self.navigationController pushViewController:viewController animated:YES];
        
    } else if (indexPath.row == 6) {
        
        // ViewDidLoad Example
        ViewDidLoadExampleViewController *viewController = [[ViewDidLoadExampleViewController alloc] init];
        [self.navigationController pushViewController:viewController animated:YES];
    }
}

@end
