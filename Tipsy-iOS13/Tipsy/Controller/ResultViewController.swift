//
//  ViewController.swift
//  Tipsy
//
//  Created by Burak Gül on 12.02.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    var resultTo2DecimalPlaces = ""
    var tip = 10
    var numberOfPeople = 2
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text=resultTo2DecimalPlaces
        settingsLabel.text = "Split between \(numberOfPeople) people, with \(tip)% tip"
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
