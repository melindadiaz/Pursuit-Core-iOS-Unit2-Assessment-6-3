//
//  ColorViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Melinda Diaz on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var greenValueOutlet: UISlider!
    @IBOutlet weak var blueValueOutlet: UISlider!
    @IBOutlet weak var redValueOutlet: UISlider!
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var alphaStepperOutlet: UIStepper!
    
    var crayon:Crayon!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBackgroundColor()
        setSliderValue()
    }
    
    
    @IBAction func colorValueSlider(_ sender: UISlider) {
        view.backgroundColor = UIColor(red: CGFloat(redValueOutlet!.value), green: CGFloat(greenValueOutlet!.value), blue: CGFloat(blueValueOutlet!.value), alpha: CGFloat(alphaStepperOutlet.value))
    }

    
    @IBAction func alphaStepper(_ sender: UIStepper) {
        view.backgroundColor = UIColor(red: CGFloat(redValueOutlet!.value), green: CGFloat(greenValueOutlet!.value), blue: CGFloat(blueValueOutlet!.value), alpha: CGFloat(sender.value))

    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        updateBackgroundColor()
  setSliderValue()

    }
    
    
    func updateBackgroundColor() {
        view.backgroundColor = UIColor(red: CGFloat(crayon.red/255), green: CGFloat(crayon.green/255), blue: CGFloat(crayon.blue/255), alpha: 1)
    }
    
    func setSliderValue() {
        redValueOutlet.value = Float(crayon.red/255)
        blueValueOutlet.value = Float(crayon.blue/255)
        greenValueOutlet.value = Float(crayon.green/255)
    }
}

