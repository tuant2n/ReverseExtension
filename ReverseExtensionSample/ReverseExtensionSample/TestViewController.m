//
//  TestViewController.m
//  ReverseExtensionSample
//
//  Created by Trinh Nhat Tuan on 11/2/25.
//  Copyright © 2025 marty-suzuki. All rights reserved.
//

#import "TestViewController.h"

#import <ReverseExtension-Swift.h>

@interface TestViewController ()

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation TestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.re.dataSource = self;
    self.tableView.re.delegate = self;
}

@end
