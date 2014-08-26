//
//  ViewController.swift
//  keyedArchiver
//
//  Created by Bradley Johnson on 8/25/14.
//  Copyright (c) 2014 learnswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        
        if let people = NSKeyedUnarchiver.unarchiveObjectWithFile(documentsPath + "/archive") as? [Person] {
            //this is great, it loaded our stuff
        } else {
            //not great, or this is the first time they launched.
        }
        
//        var person = Person()
//        var person2 = Person()
//        
//        var people = [person,person2]
//        
//        NSKeyedArchiver.archiveRootObject(people, toFile: documentsPath + "/archive")
//        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
         let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        
        var people = NSKeyedUnarchiver.unarchiveObjectWithFile(documentsPath + "/archive") as [Person]
        println(people.count    )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

