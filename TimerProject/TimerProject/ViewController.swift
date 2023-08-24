//
//  ViewController.swift
//  TimerProject
//
//  Created by Berat Rıdvan Asiltürk on 24.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLbl: UILabel!
    
    var timer = Timer()
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        counterLbl.text = "Time: \(counter)"
        // scheduled timer: planlanmis zamanlayici
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: .none, repeats: true)
        
            // Thread surec anlamindadir, 3 saniyeligine uyutacaktir
             Thread.sleep(forTimeInterval: 3)
        }
        
        @objc func timerFunc() {
            
            counterLbl.text = "Time: \(counter)"
            counter -= 1
            
            if counter == 0 {
                // Timer'i durdurur
                timer.invalidate()
                counterLbl.text = "Time is over."
                
            
        }
        
    }
    

    @IBAction func buttonTapped(_ sender: Any) {
    }
    
}

