//
//  AppDelegate.h
//  ios-test
//
//  Created by Juliano Silva on 05/01/17.
//  Copyright © 2017 Juliano Silva. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

