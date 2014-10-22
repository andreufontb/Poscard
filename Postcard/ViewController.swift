//
//  ViewController.swift
//  Postcard
//
//  Created by Andreu Font Bardolet on 21/10/14.
//  Copyright (c) 2014 Andreu Font Bardolet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.hidden = false
        
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        messageLabel.hidden = false
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        //sender.setTitle("Correu enviat", forState: UIControlState.Normal)
        mailButton.setTitle("Correu enviat", forState: UIControlState.Normal)
    }

}

