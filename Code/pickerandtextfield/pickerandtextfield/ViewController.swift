//
//  ViewController.swift
//  textfielddemo
//
//  Created by Bradley Johnson on 8/18/14.
//  Copyright (c) 2014 learnswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
                            
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    var firstLoad = true
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstNameTextField.delegate = self
        self.lastNameTextField.delegate = self
        
        var seahawksImage = UIImage(named: "seahawks")
        
        self.imageView.image = seahawksImage
    
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        if self.firstLoad == true {
            self.firstLoad = false
            //setup
        }
        println("view will appear")
    }
    override func viewDidDisappear(animated: Bool) {
        //fully gone from the screen
    }
    
    override func viewWillLayoutSubviews() {
        println("view will layoutsubviews")
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }
    override func viewWillDisappear(animated: Bool) {
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField!) {
        println(textField.text)
    }

    @IBAction func photoButtonPressed(sender: AnyObject) {
        
        var imagePickerController = UIImagePickerController()
        
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        
        
        imagePickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        
        self.presentViewController(imagePickerController, animated: true, completion: nil)
        
    }
    
    //MARK: UIImagePickerControllerDelegate
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]!) {
        picker.dismissViewControllerAnimated(true, completion: nil)
        //this gets fired when the image picker is done
        println("user picked an image")
        var editedImage = info[UIImagePickerControllerOriginalImage] as UIImage
        self.imageView.image = editedImage
        
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController!) {
        //this gets fired when the users cancel out of the process
        picker.dismissViewControllerAnimated(true, completion: nil)
    }


}

