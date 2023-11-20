//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Rustam Cherezbiev on 19.11.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private var colorDisplayView: UIView!
    
    @IBOutlet private var redValueLabel: UILabel!
    @IBOutlet private var greenValueLabel: UILabel!
    @IBOutlet private var blueValueLabel: UILabel!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    private let alphaValue: CGFloat = 1.0
    
    private var redColor = 0.0
    private var greenColor = 0.0
    private var blueColor = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        
        view.backgroundColor = UIColor(patternImage: .background)
        
        updateColorView()
    }
    
    @IBAction func redSliderValueChanged() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        redColor = CGFloat(redSlider.value)
        updateColorView()
    }
    
    @IBAction func greenSliderValueChanged() {
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        greenColor = CGFloat(greenSlider.value)
        updateColorView()
    }
    
    @IBAction func blueSliderValueChanged() {
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        blueColor = CGFloat(blueSlider.value)
        updateColorView()
    }
    
    private func updateColorView() {
        let color = UIColor(
            red: redColor,
            green: greenColor,
            blue: blueColor,
            alpha: alphaValue
        )
        colorDisplayView.backgroundColor = color
    }
}
