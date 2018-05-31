//
//  InternalFunctions.swift
//  LanguageManager
//
//  Created by sameh on 12/20/17.
//  Copyright © 2017 Sameh. All rights reserved.
//

import Foundation

extension LanguageManager
{
    //BundleSwaping to allow live language change
    static let kBundleKey =  UnsafeRawPointer(bitPattern: 1)
    
    internal class func swapBundle(_ language: supportedLanguages)
    {
        object_setClass(Bundle.main, LanguageManager.self)
        
        guard let path = Bundle.main.path(forResource: language.rawValue, ofType: "lproj") else {
            print("language folder isn't found")
            return
        }
        
        let value: Any? = Bundle(path:path)
        
        objc_setAssociatedObject(Bundle.main, kBundleKey!, value, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
    
    override public func localizedString(forKey key: String, value: String?, table tableName: String?) -> String
    {
        guard let bundle = objc_getAssociatedObject(self, LanguageManager.kBundleKey!) as? Bundle
            else
        {
            return super.localizedString(forKey: key, value: value, table: tableName)
        }
        
        return bundle.localizedString(forKey: key, value: value, table: tableName)
    }

    
}
