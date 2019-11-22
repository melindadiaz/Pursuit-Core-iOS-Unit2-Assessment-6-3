//
//  ColorViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Melinda Diaz on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    var crayon: [Crayon]?

    @IBOutlet weak var colorLabel: UILabel!
    
    
    @IBOutlet weak var stepperLabel: UILabel!
    
    @IBOutlet weak var colorVarySlider: UISlider!

    @IBOutlet weak var alphaStepper: UIStepper!
    
    
    
    
    @IBAction func colorVarySlider(_ sender: UISlider) {
    }
    
    @IBAction func alphaStepper(_ sender: UIStepper) {
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
    }
    
}
