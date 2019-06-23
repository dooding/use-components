//
//  ViewController.swift
//  Activate
//
//  Created by SWUCOMPUTER on 02/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var largeIndicator: UIActivityIndicatorView!
    
    @IBOutlet var smallIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func decreaseOff(_ sender: Any) {
        self.progressBar.progress += 0.02
        self.largeIndicator.startAnimating()
        self.smallIndicator.startAnimating()
    }
    
    @IBAction func IncreaseOn(_ sender: Any) {
        self.progressBar.progress -= 0.02
        self.largeIndicator.stopAnimating()
        self.smallIndicator.stopAnimating()
    }
}

