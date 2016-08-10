//
//  EspressifCoreDataTester.m
//  CoreDataWarehouse
//
//  Created by 白 桦 on 8/9/16.
//  Copyright © 2016 白 桦. All rights reserved.
//

#import "EspressifCoreDataTester.h"
#import "ESPCoreDataHelper.h"
#import "User.h"

@implementation EspressifCoreDataTester

#pragma mark ESPUser

+ (void) addESPUser
{
    NSLog(@"Running %@ '%@'",[ESPCoreDataHelper class],NSStringFromSelector(_cmd));
    ESPCoreDataHelper *dataHelper = [ESPCoreDataHelper sharedCoreDataHelper];
    User *user = [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:dataHelper.context];
    user.id = [NSNumber numberWithLongLong:2];
    user.email = @"user@email.com";
    user.key = @"user_key";
    user.name = @"user_name";
    user.isLastLogin = [NSNumber numberWithBool:YES];
    
    [dataHelper saveContext];
}

+ (void) showESPUser
{
    NSLog(@"Running %@ '%@'",[ESPCoreDataHelper class],NSStringFromSelector(_cmd));
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"User"];
    NSPredicate *filter = [NSPredicate predicateWithFormat:@"name == %@",@"user_name"];
    [request setPredicate:filter];
    ESPCoreDataHelper *dataHelper = [ESPCoreDataHelper sharedCoreDataHelper];
    NSArray *users = [dataHelper.context executeFetchRequest:request error:nil];
    for (User *user in users) {
        NSLog(@"uesr name:%@",user.name);
    }
}

+ (void) deleteESPUser
{
    NSLog(@"Running %@ '%@'",[ESPCoreDataHelper class],NSStringFromSelector(_cmd));
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"User"];
    NSPredicate *filter = [NSPredicate predicateWithFormat:@"name == %@",@"user_name"];
    [request setPredicate:filter];
    ESPCoreDataHelper *dataHelper = [ESPCoreDataHelper sharedCoreDataHelper];
    NSArray *users = [dataHelper.context executeFetchRequest:request error:nil];
    for (User *user in users) {
        NSError *error;
        if ([user validateForDelete:&error]) {
            NSLog(@"uesr name:%@ is deleted",user.name);
            [dataHelper.context deleteObject:user];
        } else {
            NSLog(@"Failed to delete user name:%@, Error: %@",user.name,error);
        }
    }
}

+ (void) testESPUser
{
//    [self showESPUser];
//    [self deleteESPUser];
//    [self showESPUser];
//    [self addESPUser];
//    [self deleteESPUser];
}

@end
