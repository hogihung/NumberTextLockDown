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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

