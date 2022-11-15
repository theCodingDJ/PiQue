//
//  ViewController.swift
//  Example
//
//  Created by Lyubomir Marinov on 15.11.22.
//

import UIKit
import PiQue

class ViewController: UIViewController {
    
    @IBOutlet weak var initialTextField: UITextField!
    @IBOutlet weak var targetTextField: UITextField!
    
    private let converter = PiQueConverter()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tryConversion() {
        
        guard let initialValue = initialTextField.text, !initialValue.isEmpty else {
            initialTextField.shake()
            return
        }
        
        guard let targetValue = targetTextField.text, !targetValue.isEmpty else {
            targetTextField.shake()
            return
        }
        
        converter.tryConverting(initial: initialValue, to: targetValue) { [weak self] result in
            self?.showResultAlert(result)
        }
    }
    
    private func showResultAlert(_ isSuccess: Bool) {
        
        let message = isSuccess ? "SUCCESS" : "FAILURE"
        
        let alertController = UIAlertController(
            title: "Status:",
            message: message,
            preferredStyle: .alert
        )
        let action = UIAlertAction(
            title: "OK",
            style: .default
        )
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
}

