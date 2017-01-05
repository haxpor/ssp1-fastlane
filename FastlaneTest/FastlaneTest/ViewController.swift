//
//  ViewController.swift
//  FastlaneTest
//
//  Created by Wasin Thonkaew on 1/5/17.
//  Copyright © 2017 Wasin Thonkaew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickBackButton(_ sender: Any) {
        self .dismiss(animated: true) { 
            NSLog("completed dismiss")
        }
    }

}

