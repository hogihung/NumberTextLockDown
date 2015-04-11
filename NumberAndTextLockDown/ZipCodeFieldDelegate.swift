//
//  ZipCodeFieldDelegate.swift
//  NumberAndTextLockDown
//
//  Created by John F. Hogarty on 4/9/15.
//  Copyright (c) 2015 John F. Hogarty. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeFieldDelegate : NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        textField.text = trimToFive(textField.text);
        return true
    }
    
    func trimToFive(string: String)->String {
        var coccoaString = string as NSString;
        if(coccoaString.length > 4) {
            return coccoaString.substringToIndex(4);
        }
        return string;
    }

}