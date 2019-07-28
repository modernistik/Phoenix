//
//  ViewController.swift
//  Phoenix
//
//  Created by apersaud on 07/27/2019.
//  Copyright (c) 2019 apersaud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Try and turn of internet or put app to the background or terminate. Then relaunch the app.
        SleepWorker.enqueue(sleep: 5)
        SleepWorker.enqueue(sleep: 10)
        FetchPageWorker.enqueue()
        SleepWorker.enqueue(sleep: 5)
        SleepWorker.enqueue(sleep: 10)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

