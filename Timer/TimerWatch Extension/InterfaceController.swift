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
    
    private var doneTimer: Timer?
    private var duration: TimeInterval = 60 * 3 // number of seconds (30 seconds)
    
    // MARK: - View LifeCycle
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // Configure interface objects here.
        
        self.timer.setDate(Date(timeIntervalSinceNow: self.duration+1))
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
        
        self.timer.setDate(Date(timeIntervalSinceNow: self.duration))
        self.timer.start()
        
        self.doneTimer = Timer.scheduledTimer(timeInterval: self.duration, target: self, selector: #selector(self.timerDone), userInfo: nil, repeats: false)
    }
    
    @objc private func timerDone() {
        print("done!!!")
    }
    
}
