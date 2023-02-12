//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    var tip = 0.10
    var numberOfPeople = 2
    var billTotal : Double = 0
    var resultTo2DecimalPlaces : String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected=false
        tenPctButton.isSelected=false
        twentyPctButton.isSelected=false
        
        sender.isSelected=true
        
        let buttonTitle = sender.currentTitle!
        let buttonTitleWithoutPercentSign=String(buttonTitle.dropLast(1))
        let buttonTitleAsANumber=Float(buttonTitleWithoutPercentSign)
        tip=Double(Float(buttonTitleAsANumber!)/Float(100))
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {// touches: Başlatılan dokunmaların bir kümesi. Her bir dokunma için bir UITouch nesnesi bulunur.
        // event: Başlatılan dokunma olayını tanımlayan UIEvent nesnesi.
        // Bu fonksiyon, dokunma olaylarını işlemek ve kullanıcının UIView nesnesine nasıl dokunduğunu belirlemek için kullanılır. Örneğin, dokunma olayının başlangıcında bir animasyon başlatmak, bir aksiyon gerçekleştirmek veya bir seçim yapmak gibi işlemler yapabilirsiniz.
        self.view.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text=String(format: "%.0f", sender.value)
        numberOfPeople=Int(sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let bill = billTextField.text!
        
        if bill != "" {
            billTotal = Double(bill)!
            let result = billTotal * (1 + tip) / Double(numberOfPeople)
            resultTo2DecimalPlaces = String(format: "%.2f", result)
            print(resultTo2DecimalPlaces)
        }
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="goToResult"{
            let destinationVC=segue.destination as! ResultViewController
            destinationVC.tip = Int(100*tip)
            destinationVC.resultTo2DecimalPlaces = resultTo2DecimalPlaces
            destinationVC.numberOfPeople = numberOfPeople
        }
    }
    
}

