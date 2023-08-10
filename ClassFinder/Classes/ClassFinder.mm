//
//  ClassFinder.m
//  StorX
//
//  Created by Alexandr Oleynik on 07/09/2018.
//  Copyright © 2018 RetechLabs. All rights reserved.
//

#import "ClassFinder.h"
#import <objc/runtime.h>
#import <iostream>

static BOOL checkSubclass(Class cls, Class parent) {
    Class superclass = cls;
    while (superclass != nil && superclass != parent) {
        superclass = class_getSuperclass(superclass);
    }
    return superclass == parent;
}


@implementation ClassFinder

+ (nonnull NSArray <Class> *)findAllSubclass:(nonnull Class)clazz {
    unsigned int numClasses;
    using malloc_ptr = std::unique_ptr<__unsafe_unretained Class[], decltype(&free)>;

    malloc_ptr classes(objc_copyClassList(&numClasses), &free);

    NSMutableArray *result = [NSMutableArray array];
    for(int i = 0; i < numClasses; i++) {
        Class cls = classes[i];

        if (checkSubclass(cls, clazz)) {
            [result addObject:cls];
        }
    }

    return result;
}


@end
