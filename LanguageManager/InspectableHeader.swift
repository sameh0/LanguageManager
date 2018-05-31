//
//  Inspectables.swift
//  LanguageManager
//
//  Created by sameh on 10/17/17.
//  Copyright © 2017 Sameh. All rights reserved.
//

fileprivate var languageDirection = false

extension UIView
{
    @IBInspectable var supportLanguageDirection: Bool
    {
        get
        {
            return languageDirection
        }
        
        set
        {
            if newValue
            {
                LanguageManager.alignControl(control: self)
            }
            languageDirection = newValue
        }
    }
}
