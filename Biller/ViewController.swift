//
//  ViewController.swift
//  Biller
//
//  Created by Kelechi Igbokwe on 19.01.18.
//  Copyright © 2018 Kelechi Igbokwe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var noOfDinersTf: UITextField!
    @IBOutlet weak var totalCostTf: UITextField!
    var resultText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func keyboardToggle(_ sender: UIButton) {
        
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if let noOfDiners = noOfDinersTf.text, let totalCost = totalCostTf.text, let diners = Double(noOfDiners), let costs = Double(totalCost){
            let formattedCostForEach = String(format: "%.2f", costs/diners)
            let formattedTotalCost = String(format: "%.2f", costs)
            
            resultText = "The total cost of meal is: $\(formattedTotalCost)\n\n The Number of diners are: \(Int(diners)) \n\n The bill for each diner is : $\(formattedCostForEach)"
            
             return true
        }
            return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let destinbationVC = segue.destination as! ResultsViewController
            destinbationVC.finalText = resultText
    }

    @IBAction func AboutButton(_ sender: UIButton) {
        if let aboutVC = storyboard?.instantiateViewController(withIdentifier: "about") {
            present(aboutVC, animated: true, completion: nil)
        }
        
        
        
    }
    @IBAction func dismissVC(segue: UIStoryboardSegue) {
        
    }
}
