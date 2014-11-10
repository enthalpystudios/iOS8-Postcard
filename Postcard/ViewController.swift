//
//  ViewController.swift
//  Postcard
//
//  Created by Marco Rodrigues on 25/09/2014.
//  Copyright (c) 2014 Marco Rodrigues. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!

    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // code will evaluate when press the button
        // this will change the UI
        messageLabel.text = enterMessageTextField.text
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder();
        
        nameLabel.hidden = false;
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()

        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        sendMailButton.setTitle("Mail sent", forState: UIControlState.Normal)
    }

}

