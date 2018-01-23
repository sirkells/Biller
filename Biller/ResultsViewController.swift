//
//  ResultsViewController.swift
//  Biller
//
//  Created by Kelechi Igbokwe on 20.01.18.
//  Copyright © 2018 Kelechi Igbokwe. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var resultsTextLabel: UILabel!
    var finalText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    
    resultsTextLabel.text = finalText
    }

    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
