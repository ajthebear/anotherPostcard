//
//  ViewController.swift
//  anotherPostcard
//
//  Created by AJ Kuemmel on 6/17/17.
//  Copyright © 2017 BrokenGlassKids. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameMessageLabel: UILabel!
  
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // reveals hidden label to the left of stamp that uses Enter Message test string, changes color of the hidden lable to red. Removes text from Enter Message, and sends keyboard away.
        messageLabel.hidden = false
        nameMessageLabel.hidden = false
        
        messageLabel.text = enterMessageTextField.text
        nameMessageLabel.text = enterNameTextField.text
        
        messageLabel.textColor = UIColor.redColor()
        nameMessageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    

}

}