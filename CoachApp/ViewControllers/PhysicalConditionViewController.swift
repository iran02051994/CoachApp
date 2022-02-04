//
//  PhysicalConditionViewController.swift
//  CoachApp
//
//  Created by icarrillog on 12/01/22.
//

import Foundation
import UIKit

class PhysicalConditionViewController: UIViewController{

    // MARK: - IBOutlets
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var btnBeginner: UIButton!
    @IBOutlet weak var btnIntermediate: UIButton!
    @IBOutlet weak var btnAdvanced: UIButton!
    @IBOutlet weak var btnContinue: UIButton!
    
    // MARK: - Variables
    private let borderColor = UIColor(red: 74/255, green: 226/255, blue: 98/255, alpha: 1)
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        
        progressBar.progress = 0.45
        
        btnBeginner.backgroundColor = .clear
        btnBeginner.layer.cornerRadius = 25
        btnBeginner.layer.borderWidth = 3
        btnBeginner.layer.borderColor = borderColor.cgColor
        
        btnIntermediate.backgroundColor = .clear
        btnIntermediate.layer.cornerRadius = 25
        btnIntermediate.layer.borderWidth = 3
        btnIntermediate.layer.borderColor = borderColor.cgColor
        
        btnAdvanced.backgroundColor = .clear
        btnAdvanced.layer.cornerRadius = 25
        btnAdvanced.layer.borderWidth = 3
        btnAdvanced.layer.borderColor = borderColor.cgColor
        
        btnContinue.backgroundColor = borderColor
        btnContinue.layer.cornerRadius = 25
    }
    
    @IBAction func btnBeginnerAction(_ sender: Any) {
        btnBeginner.backgroundColor = borderColor
        btnBeginner.layer.cornerRadius = 25
        
        btnIntermediate.backgroundColor = .clear
        btnIntermediate.layer.cornerRadius = 25
        btnIntermediate.layer.borderWidth = 3
        btnIntermediate.layer.borderColor = borderColor.cgColor
        
        btnAdvanced.backgroundColor = .clear
        btnAdvanced.layer.cornerRadius = 25
        btnAdvanced.layer.borderWidth = 3
        btnAdvanced.layer.borderColor = borderColor.cgColor
    }
    
    @IBAction func btnIntermediateAction(_ sender: Any) {
        btnIntermediate.backgroundColor = borderColor
        btnIntermediate.layer.cornerRadius = 25
        
        btnBeginner.backgroundColor = .clear
        btnBeginner.layer.cornerRadius = 25
        btnBeginner.layer.borderWidth = 3
        btnBeginner.layer.borderColor = borderColor.cgColor
        
        btnAdvanced.backgroundColor = .clear
        btnAdvanced.layer.cornerRadius = 25
        btnAdvanced.layer.borderWidth = 3
        btnAdvanced.layer.borderColor = borderColor.cgColor
    }
    
    @IBAction func btnAdvancedAction(_ sender: Any) {
        btnAdvanced.backgroundColor = borderColor
        btnAdvanced.layer.cornerRadius = 25
        
        btnBeginner.backgroundColor = .clear
        btnBeginner.layer.cornerRadius = 25
        btnBeginner.layer.borderWidth = 3
        btnBeginner.layer.borderColor = borderColor.cgColor
        
        btnIntermediate.backgroundColor = .clear
        btnIntermediate.layer.cornerRadius = 25
        btnIntermediate.layer.borderWidth = 3
        btnIntermediate.layer.borderColor = borderColor.cgColor
    }
}
