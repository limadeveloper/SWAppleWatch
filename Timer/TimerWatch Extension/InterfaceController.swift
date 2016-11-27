//
//  InterfaceController.swift
//  TimerWatch Extension
//
//  Created by John Lima on 27/11/16.
//  Copyright © 2016 limadeveloper. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    // MARK: - Properties
    @IBOutlet private weak var timer: WKInterfaceTimer!
    
    // MARK: - View LifeCycle
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
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
    @IBAction private func start() {
        
        print("Starting time")
        self.timer.stop()
    }
    
}
