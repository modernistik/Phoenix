//
//  DefaultSerializer.swift
//  Alamofire
//
//  Created by Anthony Persaud on 7/27/19.
//

import Foundation


public protocol PhoenixPersistence {
    func serializeTasks(_ tasks:[Phoenix.WorkItem], phoenix:Phoenix)
    func deserializeTasks(phoenix:Phoenix) -> [Phoenix.WorkItem]
}

public class UserDefaultsPhoenixStore : PhoenixPersistence {
    
    public func serializeTasks(_ tasks: [Phoenix.WorkItem], phoenix: Phoenix) {
        UserDefaults.standard.set(tasks, forKey: Phoenix.queueName)
        UserDefaults.standard.synchronize()
        print("Phoenix ---- ")
        for task in tasks {
            if let name = task["workerClass"] as? String, let tid = task["tid"] as? String {
                print("✅ Phoenix: \(name) - \(tid)")
            }
        }
    }
    
    public func deserializeTasks(phoenix: Phoenix) -> [Phoenix.WorkItem] {
        if let tasks = UserDefaults.standard.array(forKey: Phoenix.queueName) as? [Phoenix.WorkItem] {
            return tasks
        }
        return [Phoenix.WorkItem]()
    }
}
