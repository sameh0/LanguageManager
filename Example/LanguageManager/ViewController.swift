//
//  ViewController.swift
//  LanguageManager
//
//  Created by sameh-hst on 01/31/2019.
//  Copyright (c) 2019 Sameh All rights reserved.
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

