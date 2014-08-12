//
//  Person.swift
//  tableviewdemo
//
//  Created by Bradley Johnson on 8/11/14.
//  Copyright (c) 2014 learnswift. All rights reserved.
//

import Foundation
import UIKit

class Person {
    var firstName : String
    var lastName : String
    var image : UIImage?
    
    init(firstName : String, lastName : String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
