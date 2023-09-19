//
//  ViewController.swift
//  TallyApp
//
//  Created by Everett Brothers on 9/19/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var countButton: UIButton!
    @IBOutlet weak var intervalText: UITextField!
    
    var count = 0
    var interval = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countButton.layer.cornerRadius = 20
    }

    @IBAction func countTapped(_ sender: Any) {
        if let text = intervalText.text {
            interval = Int(text) ?? 1
        }
        
        if segment.selectedSegmentIndex == 0 {
            count += interval
        } else if segment.selectedSegmentIndex == 1 {
            count -= interval
        } else {
            print("Switch error")
        }
        countButton.setTitle("Count: \(count)", for: .normal)
    }
    
}

