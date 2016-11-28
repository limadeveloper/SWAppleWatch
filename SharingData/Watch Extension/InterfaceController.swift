//
//  InterfaceController.swift
//  Watch Extension
//
//  Created by John Lima on 27/11/16.
//  Copyright © 2016 limadeveloper. All rights reserved.
//

import WatchKit
import Foundation

let KEY1 = "KEY_SAVED_INPUT"
let SUITENAME = "group.watchtutorialsharingdata"

class InterfaceController: WKInterfaceController {

    // MARK: - Properties
    @IBOutlet private weak var infoLabel: WKInterfaceLabel!
    
    let userDefaults = UserDefaults(suiteName: SUITENAME)
    
    // MARK: - View LifeCycle
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        self.infoLabel.setText(nil)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    // MARK: - Actions
    @IBAction private func showInfo() {
        
        let info = userDefaults?.string(forKey: KEY1)
        print("info: \(info)")
        
        self.infoLabel.setText(info)
    }

}
