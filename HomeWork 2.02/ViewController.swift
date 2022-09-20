//
//  ViewController.swift
//  HomeWork 2.02
//
//  Created by Alex Novoseltsev on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var actionButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        actionButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        //super.viewWillLayoutSubviews()
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    @IBAction func settingLight() {
        
        if actionButton.currentTitle == "Start" {
            actionButton.setTitle("Next", for: .normal)
            actionButton.backgroundColor = UIColor.purple
        }
        
        switch currentLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            currentLight = .red
        }
        
//        if redLight.alpha < 1.0 && yellowLight.alpha < 1.0 && greenLight.alpha < 1.0 {
//            redLight.alpha = 1
//        } else if redLight.alpha == 1 {
//            redLight.alpha = 0.3
//            yellowLight.alpha = 1.0
//        } else if yellowLight.alpha == 1.0 {
//            yellowLight.alpha = 0.3
//            greenLight.alpha = 1.0
//        } else if greenLight.alpha == 1.0 {
//            greenLight.alpha = 0.3
//            redLight.alpha = 1.0
//        }
        
    }
    
}
extension ViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
}


