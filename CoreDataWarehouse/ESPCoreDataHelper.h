//
//  ESPCoreDataHelper.h
//  CoreDataWarehouse
//
//  Created by 白 桦 on 8/9/16.
//  Copyright © 2016 白 桦. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "ESPSingletonMacro.h"

@interface ESPCoreDataHelper : NSObject

DEFINE_SINGLETON_FOR_HEADER(CoreDataHelper, ESP);

@property (nonatomic, readonly) NSManagedObjectContext *context;

-(void)saveContext;

@end
