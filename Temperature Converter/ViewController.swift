//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Александр Слатинин on 07/01/2025.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func convertClicked(_ sender: Any) {
        if let result = textField.text {
            if (result == ""){
                return
            } else {
                if let num = Double(result) {
                    let converted = num * 9/5 + 32
                    resultLabel.text = String(converted)
                }
            }
        }
    }
}

