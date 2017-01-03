//
//  Doctor.m
//  PassedMaterial
//
//  Created by Slava on 28.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (void) patientFeelBad: (Pacient *) patient{
    
    if (patient.temperature >= 35 && patient.temperature <= 36.9) {
        NSLog(@"This is normal");
    }else if (patient.temperature >= 37 && patient.temperature <= 39) {
        [patient makeShot];
    }else if (patient.temperature >39 && patient.temperature <=42){
        [patient hospitaliz];
    }else{
        NSLog(@"%.2f", patient.temperature);
    }
}

- (void) patientFoundDisease:(Pacient *)patient {
    NSLog(@"Detailde inspection, %@", patient.name);        // детальный осмотр
    if ([patient.ill  isEqual: @"Nevrity"]) {
        NSLog(@"Treat from %@", patient.ill);               // лечим от...
    }else if ([patient.ill isEqual: @"Migren"]){
        NSLog(@"treat from %@", patient.ill);
    }else{
        NSLog(@"treat from %@", patient.ill);
    }
}

@end
