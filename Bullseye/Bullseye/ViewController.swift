//
//  ViewController.swift
//  Bullseye
//
//  Created by Mac on 12/19/17.
//  Copyright © 2017 Mac. All rights reserved.
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

    @IBAction func showAlert(){
        
//      Creates Alert Modal
        let alert = UIAlertController(title: "Hello World", message: "This is my first alert", preferredStyle: .alert)
        
//      Creates the dissmiss button
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
    
//      Adds the dissmiss button to the Alert Modale
        alert.addAction(action)
        
//      Shows alert when user presses button
        present(alert, animated: true, completion: nil)
    }

}

