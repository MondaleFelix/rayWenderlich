//
//  ViewController.swift
//  Bullseye
//
//  Created by Mac on 12/19/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 50
    @IBOutlet weak var slider: UISlider!
    var targetValue: Int = 0
    @IBOutlet weak var targetValueLabel: UILabel!
    var score = 0
    @IBOutlet weak var scoreLabel: UILabel!
    var roundNumber = 0
    @IBOutlet weak var roundNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        startNewRounds()
    }

    func startNewRounds() {
        roundNumberLabel.text = String(roundNumber)
        roundNumber += 1 
        scoreLabel.text = String(score)
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        targetValueLabel.text = String(targetValue)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderMoved(_ slider: UISlider){
        print("The value of the slider is now: \(slider.value)")
        currentValue = lroundf(slider.value)
        
    }
    
    @IBAction func showAlert(){
        
        let difference: Int = abs(currentValue - targetValue)
        let points = 100 - difference

        score += points
        
        let message = "The Value of the slider is: \(currentValue)" +
        "\n The target value is: \(targetValue)" + "\n The difference is \(difference) " +
        "\nYou scored \(points) points"
        
        
//      Creates Alert Modal
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        
//      Creates the dissmiss button
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
    
//      Adds the dissmiss button to the Alert Modale
        alert.addAction(action)
        
//      Shows alert when user presses button
        present(alert, animated: true, completion: nil)
        
        startNewRounds()
    }

    
}

