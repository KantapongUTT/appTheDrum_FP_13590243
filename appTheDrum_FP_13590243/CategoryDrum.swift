//
//  CategoryDrum.swift
//  appTheDrum_FP_13590243
//
//  Created by pasin on 11/12/2561 BE.
//  Copyright © 2561 13590243. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseUI

class CategoryDrum: UIViewController {
    var coin =  600
    var buy = false
    var buy2 = false
    var buy3 = false
    @IBOutlet weak var coinLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         coinLabel.text = "My Coin \(coin) coin"
    }
   
    @IBAction func drum1BT(_ sender: UIButton) {
  
    }
    
    @IBAction func drum2BT(_ sender: UIButton) {
        if buy == true{
            
        }
        
        if buy == false{
            
            if coin < 150{
            let  alert  = UIAlertController(title: "Skin Standard" , message: "ไม่สามารถเล่น Skin Standard ได้ \n เนื่องจาก coin คุณไม่พอซื้อ Skin Standard",  preferredStyle: .alert)
            
            let restarActiion = UIAlertAction(title: "Ok", style: .default)
            
            
            alert.addAction(restarActiion)
            
            present(alert, animated: true, completion: nil)
            
        
         
            
            
           
            
            }else{
            
            let  alert  = UIAlertController(title: "Skin Standard" , message: "คุณจะซื้อ Skin Standard ราคา 150 coin ",  preferredStyle: .alert)
            
                let restarActiion = UIAlertAction(title: "buy", style: .default , handler: {UIAlertAction in self.success()})
            
            let restarActiion2 = UIAlertAction(title: "cancel", style: .default)
            
            
            alert.addAction(restarActiion2)
            alert.addAction(restarActiion)
            
            present(alert, animated: true, completion: nil)
            
            
        
            }
     }
    }
    func success(){
        coin -= 150
        buy = true
        coinLabel.text = "My Coin \(self.coin) coin"
        
        
    }
    @IBAction func drum3BT(_ sender: UIButton) {
        if buy2 == true{
            
        }
        
        if buy2 == false{
        if coin > 300{
            let  alert  = UIAlertController(title: "Double Kick" , message: "คุณจะซื้อ Double Kick ราคา 300 coin",  preferredStyle: .alert)
            
            let restarActiion = UIAlertAction(title: "buy", style: .default , handler: {UIAlertAction in self.coin -= 300;self.buy2 = true;self.coinLabel.text = "My Coin \(self.coin) coin"})
            
            let restarActiion2 = UIAlertAction(title: "cancel", style: .default)
            
            
            alert.addAction(restarActiion2)
            alert.addAction(restarActiion)
            
            present(alert, animated: true, completion: nil)
            
        }else{
            let  alert  = UIAlertController(title: "Double Kick" , message: "ไม่สามารถเล่น Double Kick ได้ \n เนื่องจาก coin คุณไม่พอซื้อ Double Kick",  preferredStyle: .alert)
            
            let restarActiion = UIAlertAction(title: "Ok", style: .default)
            
            
            alert.addAction(restarActiion)
            
            present(alert, animated: true, completion: nil)
            
        }
        }
    }
    
    @IBAction func drum4BT(_ sender: UIButton) {
        if buy3 == true{
            
        }
        
        if buy3 == false{
        if coin > 500{
            let  alert  = UIAlertController(title: "Maximum" , message: "คุณจะซื้อ Maximum ราคา 500 coin",  preferredStyle: .alert)
            
            let restarActiion = UIAlertAction(title: "buy", style: .default , handler: {UIAlertAction in self.coin -= 500;self.buy3 = true;self.coinLabel.text = "My Coin \(self.coin) coin"})
            
            let restarActiion2 = UIAlertAction(title: "cancel", style: .default)
            
            
            alert.addAction(restarActiion2)
            alert.addAction(restarActiion)
            
            present(alert, animated: true, completion: nil)
            
        }else{
            let  alert  = UIAlertController(title: "Maximum" , message: "ไม่สามารถเล่น Maximum ได้ \n เนื่องจาก coin คุณไม่พอซื้อ Maximum",  preferredStyle: .alert)
            
            let restarActiion = UIAlertAction(title: "Ok", style: .default)
            
            
            alert.addAction(restarActiion)
            
            present(alert, animated: true, completion: nil)
            
        }
        }
    }
    
}
