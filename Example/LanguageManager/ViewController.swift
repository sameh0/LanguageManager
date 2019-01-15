//
//  ViewController.swift
//  LanguageManagerDemo
//
//  Created by sameh on 10/17/17.
//  Copyright © 2017 Sameh. All rights reserved.
//

import UIKit
import LanguageManager

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func onChangeLanguage( _ sender:UIButton)
    {
        if LanguageManager.checkLanguage(lang: .ar){
            LanguageManager.changeLanguage(language: .en)
        }else{
            LanguageManager.changeLanguage(language: .ar)
        }
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        appDelegate.window?.rootViewController = Storyboard.instantiateInitialViewController() as! ViewController
    }
    

}

