//
//  ViewController.swift
//  ColorizeApp
//
//  Created by Veronika Iskandarova on 26.04.2024.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var mainColorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        mainColorView.layer.cornerRadius = 20
        updateColor()
    }

    @IBAction func colorizedRed() {
        redTextField.text = "\(round(redSlider.value * 100) / 100)"
        updateColor()
    }
    
    @IBAction func colorizedGreen() {
        greenTextField.text = "\(round(greenSlider.value * 100) / 100)"
        updateColor()
    }
    
    @IBAction func colorizedBlue() {
        blueTextField.text = "\(round(blueSlider.value * 100) / 100)"
        updateColor()
    }
    
    @IBAction func doneAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    private func updateColor() {
            let red = CGFloat(redSlider.value)
            let green = CGFloat(greenSlider.value)
            let blue = CGFloat(blueSlider.value)
            mainColorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
}

