//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
// I built this application as a a daily project for my udemy course, "iOS & Swift - The Complete iOS App Development Bootcamp


import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var header: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
//    var secondsRemaining = 60
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!// soft, medium, hard
        totalTime = (eggTimes[hardness]!)
        
        progressBar.progress = 0.0
        secondsPassed = 0
        header.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer(){
        if secondsPassed < totalTime{
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed)/Float(totalTime)
            print(Float(secondsPassed) / Float(totalTime))
            
        }else{
            timer.invalidate()
            header.text = "DONE!"
            
                
            }
            
                
            }
        }
        
