//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Rustam Cherezbiev on 19.11.2023.
//

import UIKit

final class ColorizedViewController: UIViewController {

    @IBOutlet private var colorDisplayView: UIView!
    
    @IBOutlet private var redValueLabel: UILabel!
    @IBOutlet private var greenValueLabel: UILabel!
    @IBOutlet private var blueValueLabel: UILabel!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    private let alphaValue: CGFloat = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        view.backgroundColor = UIColor(patternImage: .background)
        
        updateColorView()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func redSliderValueChanged() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        updateColorView()
    }
    
    @IBAction func greenSliderValueChanged() {
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        updateColorView()
    }
    
    @IBAction func blueSliderValueChanged() {
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        updateColorView()
    }
    
    private func updateColorView() {
        let color = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: alphaValue
        )
        colorDisplayView.backgroundColor = color
    }
}
