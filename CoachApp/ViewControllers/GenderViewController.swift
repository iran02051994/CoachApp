//
//  GenderViewController.swift
//  CoachApp
//
//  Created by icarrillog on 10/01/22.
//

import Foundation
import UIKit

class GenderViewController: UIViewController{
    // MARK: - I B  O U T L E T S
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var btnFemale: UIButton!
    @IBOutlet weak var btnMale: UIButton!
    @IBOutlet weak var btnContinue: UIButton!
    
    // MARK: - V A R I A B L E S
    private let borderColor = UIColor(red: 74/255, green: 226/255, blue: 98/255, alpha: 1)
    
    // MARK: - L I F E  C Y C L E
    override func viewDidLoad() {
        
        progressBar.progress = 0.15
        
        btnFemale.backgroundColor = .clear
        btnFemale.layer.cornerRadius = 25
        btnFemale.layer.borderWidth = 3
        btnFemale.layer.borderColor = borderColor.cgColor
        
        btnMale.backgroundColor = .clear
        btnMale.layer.cornerRadius = 25
        btnMale.layer.borderWidth = 3
        btnMale.layer.borderColor = borderColor.cgColor
        
        btnContinue.backgroundColor = borderColor
        btnContinue.layer.cornerRadius = 25
    }

    // MARK: - A C T I O N S
    
    @IBAction func btnFemaleAction(_ sender: Any) {
        btnFemale.backgroundColor = borderColor
        btnFemale.layer.cornerRadius = 25
        
        btnMale.backgroundColor = .clear
        btnMale.layer.cornerRadius = 25
        btnMale.layer.borderWidth = 3
        btnMale.layer.borderColor = borderColor.cgColor
    }
    
    @IBAction func btnMaleAction(_ sender: Any) {
        btnMale.backgroundColor = borderColor
        btnMale.layer.cornerRadius = 25
        
        btnFemale.backgroundColor = .clear
        btnFemale.layer.cornerRadius = 25
        btnFemale.layer.borderWidth = 3
        btnFemale.layer.borderColor = borderColor.cgColor
    }
}
