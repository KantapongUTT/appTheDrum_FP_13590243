//
//  userCall.swift
//  appTheDrum_FP_13590243
//
//  Created by pasin on 10/12/2561 BE.
//  Copyright © 2561 13590243. All rights reserved.
//

import UIKit


class userCall: UIViewController {

        
    @IBOutlet weak var coinLabel: UILabel!
    
        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }
        
        
        func  updateViews(user:user) {
            coinLabel.text = String(user.coin)
          
    }
}
 
