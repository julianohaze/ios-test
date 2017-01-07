//
//  CoreDataEntity.h
//  ios-test
//
//  Created by Juliano Silva on 06/01/17.
//  Copyright © 2017 Juliano Silva. All rights reserved.
//

#import "CoreData.h"

@interface CoreDataEntity : NSManagedObject {
    @private
    CoreData *coreData;
}


- (id) create;
+ (NSArray *) getAll;

@end
