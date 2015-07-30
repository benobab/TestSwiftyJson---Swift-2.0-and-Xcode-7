//
//  ViewController.swift
//  TestSwiftyJson
//
//  Created by Benobab on 30/07/15.
//  Copyright © 2015 Benobab. All rights reserved.
//

import UIKit
import SwiftyJSON
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let file = NSBundle(forClass:AppDelegate.self).pathForResource("SwiftyJSONTests", ofType: "json") {
            let data = NSData(contentsOfFile: file)!
            let json = JSON(data:data)
            let creationDate = json[0]
            let date = creationDate["created_at"]
            print(date)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

