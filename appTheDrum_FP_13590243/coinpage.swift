//
//  coin.swift
//  appTheDrum_FP_13590243
//
//  Created by pasin on 10/12/2561 BE.
//  Copyright © 2561 13590243. All rights reserved.
//

import UIKit
import Firebase
import AVFoundation
import Foundation

class coinpage: UIViewController {
    
    @IBOutlet weak var timeCoin: UILabel!
    var audioPlayer : AVAudioPlayer!
    var thisFileName : String = " "
    var timer = Timer()
    var timetime = 15
    var coin = 0
    
    
    @objc func ProcessTimer()  {
       print(timetime)
        timeCoin.text = String(timetime)
        //c5sting
        if timetime > 0 {
            timetime -= 1
            timeCoin.text = String(timetime)
            
        }
        else{            timer.invalidate()
            
        }
        
    }//end func ProcessTime
    override func viewDidLoad() {
        super.viewDidLoad()
      
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(coinpage.ProcessTimer), userInfo: nil, repeats: true)
        ProcessTimer()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func setFileToPlay() {
        let soundURL = Bundle.main.url(forResource: thisFileName,  withExtension: "wav"); audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        
    }
    func playSound() {audioPlayer.play()
        //        audioPlayer.numberOfLoops = 4
        
    }//end func playSoundfunc
    func stopSound() {audioPlayer.stop()
    
    }//end func stopSound
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        
        if timetime > 0 {
            
        thisFileName = "coin"
        setFileToPlay()
        audioPlayer.play()
        coin += 3
        }else{
             thisFileName = " "
            coin += 0
            
            let  alert  = UIAlertController(title: "End Mini Game", message: "คุณได้รับcoin  \(coin) coin",  preferredStyle: .alert)
            
            let restarActiion = UIAlertAction(title: "Ok", style: .default)
            
            
            alert.addAction(restarActiion)
            
            present(alert, animated: true, completion: nil)
        }
        print(coin)
        
    }
}
