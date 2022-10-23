//
//  ViewController.swift
//  TrafficLight
//
//  Created by Максим Жиляев on 23.10.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var startButton: UIButton!
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 20
        redView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius = 75
        greenView.layer.cornerRadius = 75
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }
    var vievConfiguragion = 0
    @IBAction func startButtonTapped() {
        
        
        switch vievConfiguragion {
        case 0:
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
        case 1:
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
        case 2:
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
        default:
            break
        }
        vievConfiguragion += 1
        vievConfiguragion = (vievConfiguragion % 3)
        startButton.setTitle("NEXT", for: .normal)
    }
    
    
}

