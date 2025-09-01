//
//  ViewController.swift
//  codepath_prework
//
//  Created by Seun Adeniran on 8/31/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var moreInternshipsStepper: UIStepper!
    @IBOutlet weak var numberOfInternshipsLabel: UILabel!
    @IBOutlet weak var fullTimeJobSwitch: UISwitch!
    @IBOutlet weak var introduceSelfButton: UIButton!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func stepperDidChange(_ sender: UIStepper){
        numberOfInternshipsLabel.text = "\(Int(sender.value))"
    }
    @IBAction func introduceSelfDidTap(_ sender: Any) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I have completed \(numberOfInternshipsLabel.text!) internships. It is \(fullTimeJobSwitch.isOn) that I want a full-time position as a iOS Engineer."
        print(introduction)
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
}

