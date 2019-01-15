//
//  InspectablesHeader.swift
//  LanguageManager
//
//  Created by sameh on 10/17/17.
//  Copyright © 2017 Sameh. All rights reserved.
//
extension LanguageManager
{
    public class func alignControl<T>(control:T)
    {
        let textField = control as? UITextField
        let label = control as? UILabel
        let button = control as? UIButton
        let textview = control as? UITextView
        
        let isRTL = LanguageManager.checkLanguage(lang: .ar)
        
        textField?.textAlignment = isRTL ? .right:.left
        textview?.textAlignment = isRTL ?  .right:.left
        label?.textAlignment = isRTL ?     .right:.left
        button?.contentHorizontalAlignment = isRTL ? .right:.left
    }
}
