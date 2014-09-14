//
//  ViewController.swift
//  Postcard
//
//  Created by Ant on 13/09/2014.
//  Copyright (c) 2014 littlebigapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  // Exclamation marks refer to 'unwrapped optional'
  // It either exists or its nil.
  // Optionals it either exists or it doesn't
  // It makes sense that they exist because they've been connected up from IB
  // See http://commandshift.co.uk/blog/2014/07/20/swift-implicitly-unwrapped-optionals/
  
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
  
    // Code will evaluate on touch up inside event sent to UIButton
    messageLabel.text = enterMessageTextField.text
    nameLabel.text = enterNameTextField.text
    messageLabel.hidden = false
    nameLabel.hidden = false
    
    enterMessageTextField.text = ""
    enterNameTextField.text = ""
    
    messageLabel.textColor = UIColor.redColor()
    nameLabel.textColor = UIColor.blueColor()

    sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    sendMailButton.backgroundColor = UIColor.greenColor()

    enterMessageTextField.resignFirstResponder()
    enterNameTextField.resignFirstResponder()
  }

}

