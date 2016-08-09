//
//  User+CoreDataProperties.h
//  CoreDataWarehouse
//
//  Created by 白 桦 on 8/9/16.
//  Copyright © 2016 白 桦. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface User (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSString *email;
@property (nullable, nonatomic, retain) NSString *key;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *isLastLogin;

@end

NS_ASSUME_NONNULL_END
