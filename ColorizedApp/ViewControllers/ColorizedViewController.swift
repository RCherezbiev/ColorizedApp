//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Rustam Cherezbiev on 19.11.2023.
//

import UIKit

final class ColorizedViewController: UIViewController {
    
    @IBOutlet var colorDisplayView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    let alphaValue: CGFloat = 1
    var backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
    
    weak var delegate: ColorizedViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        navigationItem.hidesBackButton = true
        
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
    
    @IBAction func doneButtonAction() {
        delegate?.updateBackgroundColor(colorDisplayView.backgroundColor ?? .black)
        dismiss(animated: true, completion: nil)
    }
    
    func updateColorView() {
        colorDisplayView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: alphaValue
        )
    }
    
}
