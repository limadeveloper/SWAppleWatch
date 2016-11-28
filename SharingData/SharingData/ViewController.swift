//
//  ViewController.swift
//  SharingData
//
//  Created by John Lima on 27/11/16.
//  Copyright © 2016 limadeveloper. All rights reserved.
//

import UIKit

let KEY1 = "KEY_SAVED_INPUT"
let SUITENAME = "group.watchtutorialsharingdata"

class ViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var textField: UITextField!
    
    let userDefaults = UserDefaults(suiteName: SUITENAME)
    
    // MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let info = self.userDefaults?.string(forKey: KEY1)
        print("info: \(info)")
        
        self.titleLabel.text = info
    }

    // MARK: - Actions

    @IBAction private func save() {
        
        let text = self.textField.text
        self.titleLabel.text = text
        
        self.userDefaults?.set(text, forKey: KEY1)
        self.userDefaults?.synchronize()
    }
}

