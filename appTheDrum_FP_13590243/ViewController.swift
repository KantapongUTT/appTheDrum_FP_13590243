//
//  ViewController.swift
//  appTheDrum_FP_13590243
//
//  Created by pasin on 10/12/2561 BE.
//  Copyright © 2561 13590243. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginBT(_ sender: UIButton) {
        let authUI = FUIAuth.defaultAuthUI()
        guard authUI != nil else {
            return //login
        }//end
        
        authUI?.delegate = self
        
        let authViewController = authUI!.authViewController()
        
        present(authViewController, animated: true, completion: nil)
    }
    
}
extension ViewController: FUIAuthDelegate{
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        guard error == nil else {
            return
        }
        if error != nil {
            return
        }
        
        authDataResult?.user.uid
        
        performSegue(withIdentifier: "goHome", sender: self)
    }
}


