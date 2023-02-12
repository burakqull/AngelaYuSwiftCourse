//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Burak Gül on 8.02.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue : Float?
    var advice : String?
    var color : UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bmiLabel.text=String(format: "%.1f", bmiValue ?? "0.0")
        self.adviceLabel.text=advice
        view.backgroundColor=color
        

        
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
