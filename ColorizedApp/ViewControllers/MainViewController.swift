//
//  MainViewController.swift
//  ColorizedApp
//
//  Created by Rustam Cherezbiev on 09.12.2023.
//

import UIKit

protocol ColorizedViewControllerDelegate: AnyObject {
    func updateBackgroundColor(_ color: UIColor)
}

final class MainViewController: UIViewController {
    
    var colorizedVC: ColorizedViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemMint
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorizedVC = segue.destination as? ColorizedViewController else {return}
        
        colorizedVC.delegate = self
        colorizedVC.backgroundColor = view.backgroundColor ?? .black
        }
    }

// MARK: ColorizedViewControllerDelegate
extension MainViewController: ColorizedViewControllerDelegate {
    func updateBackgroundColor(_ color: UIColor) {
        view.backgroundColor = color
    }
    
}
