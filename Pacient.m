//
//  Pacient.m
//  PassedMaterial
//
//  Created by Slava on 28.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "Pacient.h"

@implementation Pacient

- (void) takePill{
    NSLog(@"%@, need to take a pill" , self.name);
}

- (void) makeShot{
    NSLog(@"%@, need to make a shot" , self.name);
}

- (void) hospitaliz{
    NSLog(@"urgent hospitalization, %@", self.name);
}

- (BOOL) isOk{
    NSLog(@"%@, you OK?", self.name);
    BOOL isFine = arc4random() % 2;
    if(!isFine){
        NSLog(@"patient temperature is - %.2f", self.temperature);
        [self.delegate patientFeelBad:self];
    }    
    return isFine;
}

- (BOOL) patientDetailedInspection{
    BOOL patientFeelSick = arc4random() % 2;
    if (patientFeelSick) {
        [self.delegate patientFoundDisease:self];
    }
    return patientFeelSick;
}



@end
