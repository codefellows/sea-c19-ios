//
//  Person.swift
//  keyedArchiver
//
//  Created by Bradley Johnson on 8/25/14.
//  Copyright (c) 2014 learnswift. All rights reserved.
//

import Foundation
import UIKit


class Person : NSObject, NSCoding {
    
    var firstName : String
    var image : UIImage?
    
//    override init() {
//        super.init()
//    }
    
    required init(coder aDecoder: NSCoder) {
        self.firstName = aDecoder.decodeObjectForKey("firstName")
            as String
        self.image = aDecoder.decodeObjectForKey("image") as? UIImage
        super.init()
    }
    
    init (fName : String) {
        self.firstName = fName
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.firstName, forKey: "firstName")
        aCoder.encodeObject(self.image, forKey: "image")
    }
}