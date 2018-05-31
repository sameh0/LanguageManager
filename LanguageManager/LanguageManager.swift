//  Created by sameh on 6/20/17.
//  Copyright © 2017 Sameh. All rights reserved.
//


public class LanguageManager:Bundle
{
    public static var defaultLanguage:supportedLanguages?
    public static var forceDefaultLanguage = false
    private static let user = UserDefaults.standard
    
    public enum supportedLanguages:String
    {
        case ar = "ar"
        case en = "en"
        case fr = "fr"
    }
    
    public class func checkLanguage(lang:supportedLanguages) ->Bool
    {
        guard let i18 = user.object(forKey: "i18n_language") as! String?
            else
        {
            fatalError("Please initalize firstTime Language Setting first")
        }
        
        return (i18 == lang.rawValue)
    }
    
    public class func getCurrentLanguage() ->String
    {
        return user.object(forKey: "i18n_language") as! String
    }
    
    
    public class func changeLanguage(language:supportedLanguages,completion: (() -> Swift.Void)? = nil)
    {
        guard let fallbackLanguage = defaultLanguage?.rawValue else
        {
            fatalError("Please Assign Default Language")
        }
        user.set(language.rawValue, forKey: "i18n_language")
        user.set([language.rawValue, fallbackLanguage], forKey: "AppleLanguages")
        user.synchronize()
        swapBundle(language)
        completion?()
    }
    
    
    public class func firstTimeLanguageSetting(completion: (() -> Swift.Void)? = nil)
    {
        if ( user.object(forKey: "firstTime") != nil ) {return}
        
        if forceDefaultLanguage
        {
            guard let lang = defaultLanguage else
            {
                fatalError("Please Assign Default Language")
            }
            changeLanguage(language: lang)
            completion?()
            return
        }
        
            //if user changed phone language the app language gets change too
            let currentSystemLanguage = Locale.current.languageCode!
            
            //Fall back to default language
            if let language = supportedLanguages.init(rawValue: currentSystemLanguage)
            {
                changeLanguage(language: language)
            }
            else
            {
                guard let lang = defaultLanguage else
                {
                    fatalError("Please Assign Default Language")
                }
                changeLanguage(language: lang)
            }
            completion?()
            UserDefaults.standard.set(true, forKey: "firstTime")
    }



}

