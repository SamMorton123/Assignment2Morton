//
//  ViewController.swift
//  Assignment2Morton
//
//  Created by Samuel H Morton on 2/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Register: UILabel!
    @IBOutlet weak var EmailInput: UITextField!
    @IBOutlet weak var PasswordInput: UITextField!
    @IBOutlet weak var NextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        applyStyles()
    }
    
    private func applyStyles() {
        
        Register.font = UIFont(name: "Helvetica", size: 32)
        
        EmailInput.placeholder = "Email"
        EmailInput.layer.cornerRadius = 1
        EmailInput.layer.borderColor = UIColor.black.cgColor
        EmailInput.layer.borderWidth = 1
        
        PasswordInput.placeholder = "Password"
        PasswordInput.isSecureTextEntry = true
        PasswordInput.layer.cornerRadius = 1
        PasswordInput.layer.borderColor = UIColor.black.cgColor
        PasswordInput.layer.borderWidth = 1
        
        NextButton.addTarget(self, action: #selector(nextButtonPressed), for: .touchUpInside)
    }
    
    
    // callback resets fields when the user clicks next
    @IBAction func nextButtonPressed() {
        EmailInput.text = ""
        PasswordInput.text = ""
    }
}

