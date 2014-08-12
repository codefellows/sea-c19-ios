//
//  ViewController.swift
//  viewdemolecture
//
//  Created by Bradley Johnson on 8/11/14.
//  Copyright (c) 2014 learnswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        println(self.view.frame)
        
        var redBox = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
        redBox.backgroundColor = UIColor.redColor()
        self.view.addSubview(redBox)
  
    }

    @IBAction func changeBounds(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
                    self.view.bounds = CGRect(x: 200, y: 0, width: 320, height: 568)
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

