//
//  DrumSkinStandard.swift
//  appTheDrum_FP_13590243
//
//  Created by pasin on 11/12/2561 BE.
//  Copyright © 2561 13590243. All rights reserved.
//

import UIKit
import Firebase
import AVFoundation
import Foundation

class DrumSkinStandard: UIViewController {
   
 
    var  audioPlayer  :  AVAudioPlayer!
    var  thisFileName  :  String  =  "  "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func  setFileToPlay(){
        let  soundURL  =  Bundle.main.url(forResource: thisFileName ,  withExtension:   "mp3");audioPlayer  =  try!  AVAudioPlayer(contentsOf: soundURL!)
        
        
    }
    func  playSound(){
        audioPlayer.play()//               audioPlayer.numberOfLoops =  4
        
    }//end  func  playSound
    func  stopSound()  {
        
        audioPlayer.stop()
        
    }//end  func  stopSound
    
    @IBAction func buttonDrum(_ sender: UIButton) {
        if (sender.tag == 1){
            thisFileName = "OpenHH"
            setFileToPlay()
            playSound()
            
        }
        if (sender.tag == 2){
            thisFileName = "Ride"
            setFileToPlay()
            playSound()
        }
        if (sender.tag == 3){
            thisFileName = "Snare"
            setFileToPlay()
            playSound()
        }
        if (sender.tag == 4){
            thisFileName = "Crash1"
            setFileToPlay()
            playSound()
        }
        if (sender.tag == 5){
            thisFileName = "Tom1"
            setFileToPlay()
            playSound()
        }
        if (sender.tag == 6){
            thisFileName = "Kick"
            setFileToPlay()
            playSound()
        }
        if (sender.tag == 7){
            thisFileName = "Tom2"
            setFileToPlay()
            playSound()
        }
        if (sender.tag == 8){
            thisFileName = "Floor"
            setFileToPlay()
            playSound()
        }
        
        
        if (sender.tag == 9){
            thisFileName = "Tom3"
            setFileToPlay()
            playSound()
        }
        if (sender.tag == 10){
            thisFileName = "CloseHH"
            setFileToPlay()
            playSound()
        }
        if (sender.tag == 11){
            thisFileName = "Crash2"
            setFileToPlay()
            playSound()
        }
        if (sender.tag == 12){
            thisFileName = "Splash"
            setFileToPlay()
            playSound()
        }
        
        
        
    }
    
}
