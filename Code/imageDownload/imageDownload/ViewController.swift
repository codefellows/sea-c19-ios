//
//  ViewController.swift
//  imageDownload
//
//  Created by Bradley Johnson on 8/25/14.
//  Copyright (c) 2014 learnswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var imageView: UIImageView!
    var imageDownloadQueue = NSOperationQueue()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageDownloadQueue.qualityOfService = NSQualityOfService.UserInitiated
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        //setup URL
        var myURL = NSURL(string: "http://images5.alphacoders.com/460/460233.jpg")

        self.activityIndicator.startAnimating()
        println("before image block")
        
        var downloadOperation = NSBlockOperation { () -> Void in
            //create data with URL
            println("inside image block")
            var myData = NSData(contentsOfURL: myURL)
            //take data and turn it into an image
            var myImage = UIImage(data: myData)
            NSOperationQueue.mainQueue().addOperationWithBlock({ () -> Void in
                self.imageView.image = myImage
                self.activityIndicator.stopAnimating()
            })
        }
        downloadOperation.qualityOfService = NSQualityOfService.Background
        self.imageDownloadQueue.addOperation(downloadOperation)
        println("outside image block")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

