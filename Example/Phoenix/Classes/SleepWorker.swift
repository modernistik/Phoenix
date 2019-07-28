//
//  SleepWorker.swift
//  Modernistik
//
//  Created by Anthony Persaud on 5/15/17.
//

import Foundation
import Phoenix

/// A simple worker that just sleeps for a specific amount of interval.
public class SleepWorker : Worker {
    public var seconds: TimeInterval = 5
    public static func enqueue(sleep: TimeInterval) {
        let op = SleepWorker()
        op.seconds = sleep
        op.enqueue()
    }
    
    override public func work() {
        log("Starting to sleep for: \(seconds)")
        Thread.sleep(forTimeInterval: seconds)
        log("Completed sleeping for: \(seconds)")
        completed() // call this when done.
    }
}
