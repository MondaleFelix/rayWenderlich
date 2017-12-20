//
//  ViewController.swift
//  Bullseye
//
//  Created by Mac on 12/19/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderMoved(_ slider: UISlider){
        print("The value of the slider is now: \(slider.value)" )
        currentValue = lroundf(slider.value)
        
    }
    
    @IBAction func showAlert(){
        
        let message = "The Value of the slider is: \(currentValue)"
        
        
//      Creates Alert Modal
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        
//      Creates the dissmiss button
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
    
//      Adds the dissmiss button to the Alert Modale
        alert.addAction(action)
        
//      Shows alert when user presses button
        present(alert, animated: true, completion: nil)
    }

    
}

