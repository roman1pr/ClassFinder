//
//  Example.swift
//  ClassFinder_Example
//
//  Created by Роман Приискалов on 10.08.2023.
//  Copyright © 2023 roman1pr. All rights reserved.
//

import Foundation
import ClassFinder

class Test {
    func test() {
        ClassFinder.findAllSubclass(Test.self)
    }
}
