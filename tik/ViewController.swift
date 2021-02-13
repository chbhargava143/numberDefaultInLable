//
//  ViewController.swift
//  tik
//
//  Created by bhargava on 13/02/21.
//  Copyright © 2021 bhargava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var number = 0
    @IBOutlet weak var numberDisplayLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        number = UserDefaults.standard.integer(forKey: "points1")
        numberDisplayLbl.text = "\(number)"
//
//        UserDefaults.standard.synchronize()
//         UserDefaults.standard.value(forKey: "myNumber")
    }

    @IBAction func incrNumber(_ sender: Any) {
       
       number += 1
        numberDisplayLbl.text = "\(number)"
        UserDefaults.standard.set(numberDisplayLbl.text, forKey: "points1")
    }
    
    @IBAction func dicNumber(_ sender: Any) {
        if number > 0{
            number -= 1
            numberDisplayLbl.text = "\(number)"
            
        }
        UserDefaults.standard.set(numberDisplayLbl.text, forKey: "points1")
        
    }
}

