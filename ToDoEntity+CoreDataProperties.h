//
//  ToDoEntity+CoreDataProperties.h
//  ToDoManager
//
//  Created by Ruby on 9/13/16.
//  Copyright © 2016 Ruby. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "ToDoEntity.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDoEntity (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *toDoTitle;
@property (nullable, nonatomic, retain) NSString *toDoAddedBy;
@property (nullable, nonatomic, retain) NSString *toDoDescription;

@end

NS_ASSUME_NONNULL_END
