//
//  NetworkCheckerWorker.swift
//  Phoenix_Example
//
//  Created by Anthony Persaud on 7/27/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import Alamofire
import Phoenix

class NetworkCheckerWorker : Worker {
    
    let networkManager = Alamofire.NetworkReachabilityManager(host: "www.google.com")
    
    override func work() {
        guard let networkManager = networkManager else {
            log("Failed to create network manager")
            return failed()
        }
        guard networkManager.isReachable == false else {
            return completed()
        }
        
        log("Waiting for network availability.")
        
        networkManager.listener = { [weak self] (status) -> () in
            
            if networkManager.isReachable {
                self?.log("Network available.... completing task.")
                self?.completed() // call this when the work is "done"
                networkManager.stopListening()
                networkManager.listener = nil
            }
        }
        networkManager.startListening()
    }
}
