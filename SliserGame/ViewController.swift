//
//  ViewController.swift
//  SliserGame
//
//  Created by macintosh on 21.01.2024.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet var slider : UISlider!
    
    @IBOutlet var targetValueBoard : UILabel!
    
    @IBOutlet var scoreLable : UILabel!
    @IBOutlet var roundLable : UILabel!
    
    var targetValue = 0
    
    var countScore = 0
    
    var round = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    @IBAction func restartGame(){
         countScore = 0
         round = 1
        newRound()
    }
    
    func newRound(){
        targetValue = Int.random(in: 1...100)
        targetValueBoard.text = "\(targetValue)"
        roundLable.text = "\(round)"
        scoreLable.text = "\(countScore)"
    }
    
        
    @IBAction func showAlert(){
        
    
        let currentValue = lroundf(slider.value)
        
        let difference = abs(currentValue - targetValue)
        
        let currentScore = 100 - difference
        
        let mesasge = "Значення слайдеру \(currentValue) \nРізниця \(difference) \nОчки \(currentScore)"
        
        let alert = UIAlertController(title: "Ціль \(targetValue)" , message: mesasge, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Again", style: .default)
        
        alert.addAction(action)
        present(alert, animated: true)
        
        countScore += currentScore
        
    
        round += 1
    
        newRound()
    }
    
    
   
    @IBAction func showInformation(){
        let message = UIAlertController(title: "Hi !", message: "First application from Anton B", preferredStyle: .alert)
        
        let info = UIAlertAction(title: "ok", style: .default)
        
        message.addAction(info)
        present(message, animated: true)
       
    }

}

