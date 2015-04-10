//
//  ViewController.swift
//  NumberAndTextLockDown
//
//  Created by John F. Hogarty on 4/6/15.
//  Copyright (c) 2015 John F. Hogarty. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // Our outlets - text fields and switch from storyboard
    @IBOutlet weak var zipCode: UITextField!
    @IBOutlet weak var showMoney: UITextField!
    @IBOutlet weak var lockedText: UITextField!
    @IBOutlet weak var unlockText: UISwitch!
    
    // Our text field delegate objects
    let zipCodeDelegate   = ZipCodeFieldDelegate()
    let showMoneyDelegate = ShowMoneyFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Disable the lockedText text on load
        lockedText.enabled = false
        
        // Let's turn the switch off on load
        unlockText.on = false
        
        // Our delegated fields
        self.zipCode.delegate = zipCodeDelegate
        self.showMoney.delegate = showMoneyDelegate
        self.lockedText.delegate = self
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        // local delegate for our unlockText field
        return true
    }
    
    @IBAction func toggleUnlockText(sender: UISwitch) {
        println("SwitchState: \(sender.on)")
        
        if unlockText.on {
            lockedText.enabled = true
        } else {
            lockedText.enabled = false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
