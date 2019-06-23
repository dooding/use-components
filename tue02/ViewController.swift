//
//  ViewController.swift
//  tue02
//
//  Created by SWUCOMPUTER on 19/03/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var labelDisplay: UILabel!
    @IBOutlet var smartOS: UISegmentedControl!
    @IBOutlet var leftMiddleRight: UISegmentedControl!
    @IBOutlet var beerCoffeeWine: UISegmentedControl!
    
    @IBOutlet var textOperand1: UITextField!
    @IBOutlet var textOperand2: UITextField!
    @IBOutlet var labelResult: UILabel!
    @IBOutlet var segOperator: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //delegate method
        textField.resignFirstResponder()
        return true }

    @IBAction func buttonCarculate(_ sender: UIButton) {
        
        let opd1 = Int(textOperand1.text!)!
        let opd2 = Int(textOperand2.text!)!
        var result = 0
        if (segOperator.selectedSegmentIndex == 0) { result = opd1 + opd2 } else
            if (segOperator.selectedSegmentIndex == 1) { result = opd1 - opd2 } else
                if (segOperator.selectedSegmentIndex == 2) { result = opd1 * opd2 }
        labelResult.text = String(result)
        if (segOperator.selectedSegmentIndex == 3) { let result2 = Double(opd1) / Double(opd2)
            labelResult.text = String(format:"%2.3f", result2) }
    }
    
    @IBAction func changeselection(_ sender: UISegmentedControl) {
        //레이블이 텍스트인 경우 -> 타이틀을 가져오면 된다.
        if sender == self.smartOS || sender == self.leftMiddleRight {
            self.labelDisplay.text = sender.titleForSegment(at: sender.selectedSegmentIndex) } //세그먼트의 이름을 가져올때 저 함수 사용
            
        else {
            let drinkArray: Array<String> = ["Beer", "Coffee", "Wine"]
            self.labelDisplay.text = drinkArray[sender.selectedSegmentIndex] } //배열 속에 있는 이름으로 어떤 타이틀을 써준다.
    
}

}
