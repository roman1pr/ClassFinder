//
//  ClassFinder.h
//  StorX
//
//  Created by Alexandr Oleynik on 07/09/2018.
//  Copyright © 2018 RetechLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassFinder : NSObject

+(nonnull NSArray<Class>*)findAllSubclass:(nonnull Class)clazz;
    
@end
