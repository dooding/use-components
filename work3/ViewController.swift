//
//  ViewController.swift
//  work3
//
//  Created by SWUCOMPUTER on 19/03/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var displayLabel: UILabel!
    @IBOutlet var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }
    
    
    
    
    @IBAction func segControlDisplay(_ sender: UISegmentedControl) {
        self.displayLabel.text = sender.titleForSegment(at: sender.selectedSegmentIndex)
    }
    
    @IBAction func buttonDisplay() {
       self.displayLabel.text = myTextField.text
    }
    
    @IBAction func switchDisplay(_ sender: UISwitch) {
        if sender.isOn{
            self.displayLabel.text = "switch is on"
        }
        else{
            self.displayLabel.text = "switch is off"
        }
    }
    
    @IBAction func sliderDisplay(_ sender: UISlider) {
        self.displayLabel.text = String(format:"%10.8f", sender.value)
    }
    
}

