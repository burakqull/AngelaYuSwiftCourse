//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    var player: AVAudioPlayer?
    
    
    let eggTimes:[String:Int] = ["Soft":3,"Medium":4,"Hard":7]// dictionary de kullanılabilir
    
    
    
    var timer=Timer()
    
    var totalTime = 0
    var secondsPassed = 0
    
    
    
    
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        progressBar.progress=0.0
        secondsPassed=0
        
        let  hardness=sender.currentTitle
        totalTime = eggTimes[hardness!]!
        titleLabel.text=hardness
        
        
        
        timer=Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
        
        
        
    }
    
    @objc func updateCounter() {
        //example functionality
        
        if secondsPassed < totalTime {
            
            
            //print("kalan zaman \(counter)")
            secondsPassed += 1
            progressBar.progress=Float(Float(secondsPassed)/Float(totalTime))
        }else {
            timer.invalidate()
            titleLabel.text="DONE!!!!!"
            
            
            playSound()
            
            
            
        }
        
        
        
        func playSound() {
            guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else { return }
            
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)
                
                
                player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                
                guard let player = player else { return }
                
                
                
                player.play()
                
            } catch let error {
                print(error.localizedDescription)
            }
            
            
            
            
            
        }
    }
}
