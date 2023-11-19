//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Rustam Cherezbiev on 19.11.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private var colorDisplayView: UIView!
    
    @IBOutlet private var redLabel: UILabel!
    @IBOutlet private var greenLabel: UILabel!
    @IBOutlet private var blueLabel: UILabel!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    var redColor = 0.0
    var greenColor = 0.0
    var blueColor = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    
    
    @IBAction func redSliderValueChanged() {
        redLabel.text = "Red: \(round(redSlider.value * 100) / 100)"
        redColor = CGFloat(redSlider.value)
        updateColorView()
    }
    
    @IBAction func greenSliderValueChanged() {
        greenLabel.text = "Green: \(round(greenSlider.value * 100) / 100)"
        greenColor = CGFloat(greenSlider.value)
        updateColorView()
    }
    
    @IBAction func blueSliderValueChanged() {
        blueLabel.text = "Blue: \(round(blueSlider.value * 100) / 100)"
        blueColor = CGFloat(blueSlider.value)
        updateColorView()
    }
    
    private func updateColorView() {
        let color = UIColor(
            red: redColor,
            green: greenColor,
            blue: blueColor,
            alpha: 1.0
        )
        colorDisplayView.backgroundColor = color
    }
}
