//
//  ViewController.swift
//  JRDate
//
//  Created by 京睿 on 2017/4/5.
//  Copyright © 2017年 京睿. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let date = Date()
        print(date.JRString(formatter: "yyyy-MM-dd HH:mm:ss.SSS"))
        print(date.JRModel.JRDayOfYear)
    }
}

