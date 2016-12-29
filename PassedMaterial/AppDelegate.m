//
//  AppDelegate.m
//  PassedMaterial
//
//  Created by Slava on 28.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "Pacient.h"
#import "Doctor.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSArray *name = @[@"Innokentiy", @"Irakliy", @"Isaak", @"Svyatoslav", @"Sevastyan",
                     @"Semen", @"Serafim", @"Sharl", @"Sherlok", @"Erik"];
    
    NSArray *ill = @[@"Migren", @"Cherepno-mozgovaya travma", @"Virusnye porazheniya nervnoy sistemy",
                     @"Nevrity", @"Diskinezii zhelchevyvodyashchikh putey", @"Kholetsistit", @"Migren",
                     @"Virusnye porazheniya nervnoy sistemy", @"Kholetsistit", @"Nevrity"];
    
//    NSMutableArray *sickPatientObjekt = [NSMutableArray new];
//    NSMutableArray *sickPatientKey = [NSMutableArray new];
    NSMutableDictionary *sickPatient = [NSMutableDictionary new];
    
    for (int i = 0; i < 10; i++) {
        Pacient *patient = [Pacient new];
        
        NSInteger number = arc4random_uniform(8.f) + 35.f;
        CGFloat random = number;
        
        patient.name = [NSString stringWithFormat: @"%@", [name objectAtIndex:i]];
        patient.ill = [NSString stringWithFormat: @"%@", [ill objectAtIndex:i]];
        
        patient.temperature = random;        // ?????????????/
        
        [sickPatient setObject:patient forKey:name];
//        [sickPatientKey addObject:[NSString stringWithFormat:@"%@ - %@", [sickPatientObjekt [i] name], [sickPatientObjekt [i] ill]]];
    }
//    NSDictionary *dictionary = [NSDictionary dictionaryWithObjects:sickPatientObjekt forKeys:sickPatientKey];
    
    for (NSString *key in [sickPatient allKeys]) {
        Pacient *obj = [sickPatient objectForKey:key];
        NSLog(@"Name %@, Ill - %@, t = %.f", obj.name, obj.ill, obj.temperature);
    }

    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
