//
//  ViewController.swift
//  ShakingTextField
//
//  Created by Mohamed on 9/28/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var usernameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        usernameTF.delegate = self
    
       
    }

    
    func shakeTextField(_ usernameTF:UITextField){
        
        let shake = CABasicAnimation(keyPath: "position")
        
        shake.duration = 0.05
        shake.repeatCount = 5
        shake.autoreverses = true
        shake.fromValue = NSValue(cgPoint: CGPoint(x: usernameTF.center.x - 4, y: usernameTF.center.y))
        shake.toValue = NSValue(cgPoint: CGPoint(x: usernameTF.center.x + 4, y: usernameTF.center.y))
        usernameTF.layer.add(shake, forKey: "position")
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
    
        shakeTextField(usernameTF)
       
    }

}

