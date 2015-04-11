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
        
        if textField.tag == 100 && phoneNumberValidation(string) || string == "" && phoneNumberValidation(string)
        {
            var cleanArray = textField.text.componentsSeparatedByCharactersInSet(NSCharacterSet.decimalDigitCharacterSet().invertedSet) as NSArray
            var cleanCentString  = cleanArray.componentsJoinedByString("")
            var centAmount:NSInteger! =  cleanCentString.toInt()
            
            if countElements(string) > 0
            {
                if centAmount == nil
                {
                    centAmount = 0
                }
                centAmount = centAmount * 10 + string.toInt()!
            }else
            {
                centAmount = centAmount / 10
            }
            
            var floatValue = Double(centAmount) / 100
            var amount = NSNumber(double:  floatValue )
            var _currencyFormatter = NSNumberFormatter()
            
            _currencyFormatter.numberStyle = .CurrencyStyle
            _currencyFormatter.currencyCode = "USD"
            _currencyFormatter.negativeFormat = "-¤#,##0.00"
            
            textField.text = _currencyFormatter.stringFromNumber(amount)
        }
        if textField.tag != 100 {
            return true
        }
        return false
    }
    
    func phoneNumberValidation(value: String) -> Bool {
        var charcter  = NSCharacterSet(charactersInString: "0123456789").invertedSet
        var filtered:NSString!
        var inputString:NSArray = value.componentsSeparatedByCharactersInSet(charcter)
        filtered = inputString.componentsJoinedByString("")
        return  value == filtered
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        textField.text = ""
    }

}