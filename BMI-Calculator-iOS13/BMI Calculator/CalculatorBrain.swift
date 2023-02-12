//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Burak Gül on 8.02.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    
    var bmi :BMI?
  
    mutating func calculateBmiValue(_ weight : Float , _ height : Float )  {
        
        let Weight=Float(String(format: "%.2f", weight))!
        let Height=Float(String(format: "%.2f", height))!
        
        
        let bmiValue=Weight/(Height*Height)
        
        if bmiValue<18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color:UIColor {_ in return #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)})
            
            
            
        }else if bmiValue<24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle ! ", color:UIColor {_ in return #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)})
            
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color:UIColor {_ in return #colorLiteral(red: 0.6066564322, green: 0.1104470566, blue: 0.1192050949, alpha: 1)})
        }
        
    }
    
    func getBmiValue() -> Float {
        let bmiValue = bmi?.value ?? 0.0
        return bmiValue
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
}
