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
    
    @IBOutlet weak var counterLabel: UILabel!
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = String(counter) + " conversions"
    }

    @IBAction func convertClicked(_ sender: Any) {
        if let result = textField.text {
            if (result == ""){
                return
            } else {
                if let num = Double(result) {
                    let converted = num * 9/5 + 32
                    resultLabel.text = String(converted)
                    counter += 1
                    counterLabel.text = String(counter) + " conversions"
                }
            }
        }
    }
}

