//
//  ViewController.swift
//  HomeWork 2.02
//
//  Created by Alex Friend on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var actionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        actionButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        //super.viewWillLayoutSubviews()
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    @IBAction func settingLight() {
        
        actionButton.setTitle("Next", for: .normal)
        actionButton.backgroundColor = UIColor.purple
        
        if redLight.alpha < 1.0 && yellowLight.alpha < 1.0 && greenLight.alpha < 1.0 {
            redLight.alpha = 1
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1.0
        } else if yellowLight.alpha == 1.0 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1.0
        } else if greenLight.alpha == 1.0 {
            greenLight.alpha = 0.3
            redLight.alpha = 1.0
        }
        
    }
    
}


