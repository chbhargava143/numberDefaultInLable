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
    var aView : UIView?
    let activateIndicator = UIActivityIndicatorView()
               
    @IBOutlet weak var numberDisplayLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        number = UserDefaults.standard.integer(forKey: "points1")
        numberDisplayLbl.text = "\(number)"
        activateIndicator.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        view.addSubview(activateIndicator)
//        UserDefaults.standard.synchronize()
//         UserDefaults.standard.value(forKey: "myNumber")
    }

    @IBOutlet weak var userImage: UIImageView!
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
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if touch?.view == userImage{
            print("Bhargava")
            
              performSegue(withIdentifier: "stVcs", sender: self)
        }else {
           
            print("Nothing")
            
        }
    }
    func showSpinner(){
        aView = UIView(frame: self.view.bounds)
        aView?.backgroundColor = UIColor(white: 0, alpha: 0.5)

        let ai = UIActivityIndicatorView(style: .large)
        ai.center = aView!.center
        ai.color = .red
        ai.startAnimating()
        aView?.addSubview(ai)
        self.view.addSubview(aView!)

        Timer.scheduledTimer(withTimeInterval: 20, repeats: false, block: {_ in self.removeSpinner()})
    }

    func removeSpinner(){

        aView?.removeFromSuperview()
        aView = nil
    }
}

