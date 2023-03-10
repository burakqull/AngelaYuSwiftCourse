//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var heightSlider: UISlider!
    
    
    @IBOutlet weak var weightSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        calculatorBrain.calculateBmiValue(weight,height)
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text=String(format: "%.2f", heightSlider.value)+" m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text=String(format: "%.0f", weightSlider.value)+" kg"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue=calculatorBrain.getBmiValue()
            destinationVC.advice=calculatorBrain.getAdvice()
            destinationVC.color=calculatorBrain.getColor()
          
        }
    }
    
    
    
    
    
    
    
}

