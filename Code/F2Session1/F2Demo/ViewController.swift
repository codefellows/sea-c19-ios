//
//  ViewController.swift
//  F2Demo
//
//  Created by Bradley Johnson on 8/4/14.
//  Copyright (c) 2014 learnswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var myFirstSlider: UISlider!
    var name = "John"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var mySwitch = UISwitch(frame: CGRect(x: 20, y: 30, width: 120, height: 30))
        self.view.addSubview(mySwitch)
        
        self.myFirstSlider.value = 0.0
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.myFirstSlider.frame = CGRect(x: 0, y: 180, width: self.view.bounds.width, height: 33)
//        self.myFirstSlider.setValue(1.0, animated: true)
    }
    
    func setNewName(name: String) {
        self.name = name
    }
    
    @IBAction func sliderDidSlide(sender: UISlider) {
        if self.myFirstSlider.value > 0.5 {
            self.view.backgroundColor = UIColor.redColor()
        } else {
            self.view.backgroundColor = UIColor.blueColor()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

