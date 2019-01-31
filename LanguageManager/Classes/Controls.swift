//
//  InspectablesHeader.swift
//  LanguageManager
//
//  Created by sameh on 10/17/17.
//  Copyright © 2017 Radvy. All rights reserved.
//
extension LanguageManager
{
    public class func alignControl<T>(control:T)
    {
        let textField = control as? UITextField
        let label = control as? UILabel
        let button = control as? UIButton
        let textview = control as? UITextView
        
        if LanguageManager.checkLanguage(lang: .ar)
        {
            textField?.textAlignment = .right
            textview?.textAlignment = .right
            label?.textAlignment = .right
            button?.contentHorizontalAlignment = .right
        }
        else
        {
            label?.textAlignment = .left
            textField?.textAlignment = .left
            textview?.textAlignment = .left
            button?.contentHorizontalAlignment = .left
        }
    }
}

open class UILabelWithLanguageAlignment:UILabel
{
    override public init (frame : CGRect)
    {
        super.init(frame : frame)
        LanguageManager.alignControl(control: self)
    }
    
    required public init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        LanguageManager.alignControl(control: self)
    }
}


open class UITextViewWithLanguageAlignment:UITextView
{
    public override init(frame: CGRect, textContainer: NSTextContainer?)
    {
        super.init(frame: frame, textContainer: textContainer)
        LanguageManager.alignControl(control: self)
    }
    
    required public init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        LanguageManager.alignControl(control: self)
    }
}

open class UIButtonWithLanguageAlignment:UIButton
{
    override public init (frame : CGRect)
    {
        super.init(frame : frame)
        LanguageManager.alignControl(control: self)
    }
    
    required public init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        LanguageManager.alignControl(control: self)
    }
}
