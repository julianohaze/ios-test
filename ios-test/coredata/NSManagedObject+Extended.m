//
//  NSManagedObject+Extended.m
//  ios-test
//
//  Created by Juliano Silva on 07/01/17.
//  Copyright © 2017 Juliano Silva. All rights reserved.
//

#import "NSManagedObject+Extended.h"
#import "CoreData.h"

@implementation NSManagedObject (Extended)

- (void) save {
    NSManagedObjectContext *managedObjectContext = [[CoreData get] managedObjectContext];
    
    if (managedObjectContext != nil) {
        [managedObjectContext performBlockAndWait:^{
            NSError *error = nil;
            if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
                NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            }
        }];
    }
}

- (void) remove {
    [[[CoreData get] managedObjectContext] deleteObject:self];
    
    [self save];
}


@end
