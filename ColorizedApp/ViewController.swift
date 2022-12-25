//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Юрий Краснов on 22.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var blueColorValue: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
        
        setColor()
        
        setValue(for: redColorValue, greenColorValue, blueColorValue)
    }

    @IBAction func redColorSliderAction() {
        redColorValue.text = toString(from: redColorSlider)
        setColor()
        
    }
    @IBAction func greenColorSliderAction() {
        greenColorValue.text = toString(from: greenColorSlider)
        setColor()
    }
    @IBAction func blueColorSliderAction() {
        blueColorValue.text = toString(from: blueColorSlider)
        setColor()
    }
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1
        )
    }
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redColorValue:
                redColorValue.text = toString(from: redColorSlider)
            case greenColorValue:
                greenColorValue.text = toString(from: greenColorSlider)
            default:
                blueColorValue.text = toString(from: blueColorSlider)
            }
        }
    }
    
    private func toString(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

