//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var button: UIButton!
    
    let ballArray = [UIImage(imageLiteralResourceName: "ball1"),
                     UIImage(imageLiteralResourceName: "ball2"),
                     UIImage(imageLiteralResourceName: "ball3"),
                     UIImage(imageLiteralResourceName: "ball4"),
                     UIImage(imageLiteralResourceName: "ball5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.borderWidth=2
        button.layer.cornerRadius=button.frame.size.height*0.5
        
       
        
        
    }
    
    
    
    

    @IBAction func pressedButton(_ sender: UIButton) {
        
        imageView.image = ballArray.randomElement()
    }
    
}

