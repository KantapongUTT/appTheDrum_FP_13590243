//
//  welCome.swift
//  appTheDrum_FP_13590243
//
//  Created by pasin on 10/12/2561 BE.
//  Copyright © 2561 13590243. All rights reserved.
//

import UIKit
import Firebase
import AVFoundation
import Foundation

class welCome: UIViewController {
    var timer = Timer()
    var timetime = 320
    @IBOutlet weak var coinImg: UIImageView!
    
    @IBOutlet weak var coinLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    @objc func ProcessTimer()  {
        print(timetime)
       
        //c5sting
        if timetime > 0 {
            timetime -= 1
            
            
        }
        else{            timer.invalidate()
            
        }
        
    }//end func ProcessTime
    
    @IBAction func myDrumBT(_ sender: UIButton) {
    }
    
   
    @IBAction func coinBT(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(coinpage.ProcessTimer), userInfo: nil, repeats: true)
        ProcessTimer()
        
        if timetime > 0 {
            let  alert  = UIAlertController(title: "Blocks Mini Game", message: "สามารถเข้าเล่นได้อีกในเวลา \((timetime)/60) นาที",  preferredStyle: .alert)
            
            let restarActiion = UIAlertAction(title: "Ok", style: .default)
            
            
            alert.addAction(restarActiion)
            
            present(alert, animated: true, completion: nil)
            
        }
        else{
           timetime = 300
            
        }
        
    }
    

}

