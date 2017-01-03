//
//  Pacient.h
//  PassedMaterial
//
//  Created by Slava on 28.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@protocol PatientDelegate;

@interface Pacient : NSObject

@property (strong, nonatomic) NSString *name;           // имя
@property (assign, nonatomic) CGFloat temperature;      // температура
@property (strong, nonatomic) NSString *ill;            // болячка
@property (weak, nonatomic) id <PatientDelegate> delegate;

// методы лечения
- (void) takePill;      // принять таблетку
- (void) makeShot;      // сделать укол
- (void) hospitaliz;    // госпитализировать
- (BOOL) isOk;
- (BOOL) patientDetailedInspection;     // детальная проверка
@end

@protocol PatientDelegate <NSObject>
@required
- (void) patientFeelBad: (Pacient *) patient;
- (void) patientFoundDisease: (Pacient *) patient;

@end
