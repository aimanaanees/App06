//
//  ViewController.swift
//  CameraApp
//
//  Created by Aiman Abdullah Anees on 25/05/16.
//  Copyright © 2016 Aiman Abdullah Anees. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    
    @IBOutlet var ImageView: UIImageView!
    
    var imagePicker = UIImagePickerController()
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ImageView.image = UIImage(named: "new.jpg")
        imagePicker.delegate = self
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func CameraButton(sender: UIBarButtonItem) {
        imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func PhotoLibrary(sender: UIBarButtonItem) {
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        presentViewController(imagePicker, animated: true, completion: nil)
        
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        ImageView.image = info[UIImagePickerControllerOriginalImage ] as? UIImage
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
}

