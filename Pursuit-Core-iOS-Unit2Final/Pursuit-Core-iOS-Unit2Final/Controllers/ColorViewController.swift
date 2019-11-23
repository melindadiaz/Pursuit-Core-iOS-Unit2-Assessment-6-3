//
//  ColorViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Melinda Diaz on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController, UITableViewDelegate {
    
    var crayon:Crayon!

    @IBOutlet weak var colorLabel: UILabel!
    
    @IBOutlet weak var stepperLabel: UILabel!
    
   
    @IBOutlet weak var colorSlider: UISlider!
    
    
    
    @IBOutlet weak var alphaStepper: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorSlider.value = Float(crayon.red)
        
        
    }
    
    
    
    @IBAction func colorVarySlider(_ sender: UISlider) {
        colorLabel.text = String(colorSlider.value)
        self.view.backgroundColor = UIColor(red: CGFloat(colorSlider.value/255), green: CGFloat(colorSlider.value/255), blue: CGFloat(colorSlider.value/255), alpha: 1)
    }
    
    @IBAction func alphaStepper(_ sender: UIStepper) {
      //  self.view.backgroundColor = UICol
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
    }
    
    
//
//    private func updateBackgroundColor() {
//           self.view.backgroundColor = UIColor
          // }
}

