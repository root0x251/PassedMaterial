//
//  Doctor.h
//  PassedMaterial
//
//  Created by Slava on 28.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pacient.h"
@protocol PatientDelegate;
@interface Doctor : NSObject <PatientDelegate>

@end
