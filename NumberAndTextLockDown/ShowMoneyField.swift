//
//  ShowMoneyField.swift
//  NumberAndTextLockDown
//
//  Created by John F. Hogarty on 4/9/15.
//  Copyright (c) 2015 John F. Hogarty. All rights reserved.
//

import Foundation
import UIKit

class ShowMoneyFieldDelegate : NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        // need code here to convert digits entered into currency
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        textField.text = ""
    }

}