//  Copyright 2010 Todd Ditchendorf
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import "DemoAppDelegate.h"
#import "MyRootViewController.h"
#import "MyFirstViewController.h"
#import "MySecondViewController.h"
#import <UIKit/UIKit.h>

@implementation DemoAppDelegate

- (void)dealloc {
    self.tabBarController = nil;
    [super dealloc];
}


- (void)awakeFromNib {
    UIViewController *vc1 = [[[MyRootViewController alloc] init] autorelease];
    UINavigationController *nc1 = [[[UINavigationController alloc] initWithRootViewController:vc1] autorelease];
    nc1.title = @"One";
    nc1.tabBarItem = [[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMostRecent tag:1] autorelease];
    
    UIViewController *vc2 = [[[MyRootViewController alloc] init] autorelease];
    UINavigationController *nc2 = [[[UINavigationController alloc] initWithRootViewController:vc2] autorelease];
    nc2.title = @"Two";
    nc2.tabBarItem = [[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:2] autorelease];

    UIViewController *vc3 = [[[MyRootViewController alloc] init] autorelease];
    UINavigationController *nc3 = [[[UINavigationController alloc] initWithRootViewController:vc3] autorelease];
    nc3.title = @"Three";
    nc3.tabBarItem = [[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMostViewed tag:3] autorelease];
    
    UIViewController *vc4 = [[[MyRootViewController alloc] init] autorelease];
    UINavigationController *nc4 = [[[UINavigationController alloc] initWithRootViewController:vc4] autorelease];
    nc4.title = @"Four";
    nc4.tabBarItem = [[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:4] autorelease];
	vc4.navigationController.navigationBar.barStyle = UIBarStyleBlack;

    UIViewController *vc5 = [[[MyRootViewController alloc] init] autorelease];
    UINavigationController *nc5 = [[[UINavigationController alloc] initWithRootViewController:vc5] autorelease];
    nc5.title = @"Three";
    nc5.tabBarItem = [[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:5] autorelease];
    
    self.tabBarController= [[[UITabBarController alloc] init] autorelease];
    tabBarController.viewControllers = [NSArray arrayWithObjects:nc1, nc2, nc3, nc4, nc5, nil];

    NSView *view = tabBarController.view;
    [view setFrame:[[window contentView] bounds]];
    
    [tabBarController viewWillAppear:NO];
    [[window contentView] addSubview:view];
    [tabBarController viewDidAppear:NO];
}

@synthesize tabBarController;
@end
