//
//  NetworkCheckWorker.swift
//  Phoenix_Example
//
//  Created by Anthony Persaud on 7/27/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import Phoenix
import Alamofire

// You can subclass this worker, to whichever job/task requires an internet connection as a dependency
// for accomplishing work. The worker will automatically add the NetworkCheckWorker as it's depedency.
// When the NetworkCheckWorker completed (when a connection is available), that task completes and this
// one will proceed.
public class NetworkedWorker : Worker {
    
    override public func configure() {
        let networkCheck = NetworkCheckerWorker()
        networkCheck.queuePriority = .veryHigh
        addDependency(networkCheck)
        queue.addOperation(networkCheck)
    }
}

/// This worker will wait until there is an internet connection before attempting the do work.
/// This is because it inherits fromt he NetworkedWorker which, when enqueued, automatically
/// adds the NetworkCheckerWorker as a dependency.
public class FetchPageWorker : NetworkedWorker {
    
    public override func work() {
        guard let url = URL(string: "https://www.google.com") else { return failed() }
        Alamofire.request(url).responseString { response in
            if let page = response.result.value {
                print(page)
                self.completed()
            } else {
                print("[Error] Failed to fetch website.")
                self.retry() // you can retry jobs and set a max limit
            }
        }
    }
}
