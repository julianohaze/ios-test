//
//  CoreDataEntity.m
//  ios-test
//
//  Created by Juliano Silva on 06/01/17.
//  Copyright © 2017 Juliano Silva. All rights reserved.
//

#import "CoreDataEntity.h"

@implementation CoreDataEntity


- (id) create {
    NSString * className = NSStringFromClass ([self class]);
    coreData =  [CoreData get];
    NSManagedObject * managedObject = [NSEntityDescription insertNewObjectForEntityForName:className inManagedObjectContext:[coreData managedObjectContext]];
    return managedObject;
}


+ (NSArray *) getAll {
    NSString * className = NSStringFromClass ([self class]);
    
    CoreData * coreData =  [CoreData get];
    
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:className];
    
    NSError *error = nil;
    NSArray *results = [coreData.managedObjectContext executeFetchRequest:request error:&error];
    if (!results) {
        NSLog(@"Error fetching Employee objects: %@\n%@", [error localizedDescription], [error userInfo]);
        abort();
    }
    
    return results;
}

@end
