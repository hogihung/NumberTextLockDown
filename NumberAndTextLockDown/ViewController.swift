//
//  ViewController.swift
//  NumberAndTextLockDown
//
//  Created by John F. Hogarty on 4/6/15.
//  Copyright (c) 2015 John F. Hogarty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zipCode: UITextField!
    @IBOutlet weak var showMoney: UITextField!
    @IBOutlet weak var lockedText: UITextField!
    @IBOutlet weak var unlockText: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Disable the lockedText text on load
        lockedText.enabled = false
        
        // Let's turn the switch off on load
        unlockText.on = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // zipCode text box should only allows numbers with a 
    // max number of 5 total numbers.
    
    // showMoney should allow the user to type dollar value
    // then cents

    
    @IBAction func toggleUnlockText(sender: UISwitch) {
        println("SwitchState: \(sender.on)")
        
        if unlockText.on {
            lockedText.enabled = true
        } else {
            lockedText.enabled = false
        }
    }
}

