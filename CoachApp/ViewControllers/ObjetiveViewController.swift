//
//  ObjetiveViewController.swift
//  CoachApp
//
//  Created by icarrillog on 11/01/22.
//

import Foundation
import UIKit

class ObjetiveViewController: UIViewController{
    // MARK: - IBOutlets
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var btnLoseFat: UIButton!
    @IBOutlet weak var btnKeepShape: UIButton!
    @IBOutlet weak var btnIncreaseMuscle: UIButton!
    @IBOutlet weak var btnContinue: UIButton!
    
    // MARK: - Variables
    private let borderColor = UIColor(red: 74/255, green: 226/255, blue: 98/255, alpha: 1)
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        
        progressBar.progress = 0.3
        
        btnLoseFat.backgroundColor = .clear
        btnLoseFat.layer.cornerRadius = 25
        btnLoseFat.layer.borderWidth = 3
        btnLoseFat.layer.borderColor = borderColor.cgColor
        
        btnKeepShape.backgroundColor = .clear
        btnKeepShape.layer.cornerRadius = 25
        btnKeepShape.layer.borderWidth = 3
        btnKeepShape.layer.borderColor = borderColor.cgColor
        
        btnIncreaseMuscle.backgroundColor = .clear
        btnIncreaseMuscle.layer.cornerRadius = 25
        btnIncreaseMuscle.layer.borderWidth = 3
        btnIncreaseMuscle.layer.borderColor = borderColor.cgColor
        
        btnContinue.backgroundColor = borderColor
        btnContinue.layer.cornerRadius = 25
    }
    
    @IBAction func btnLoseFatAction(_ sender: Any) {
        btnLoseFat.backgroundColor = borderColor
        btnLoseFat.layer.cornerRadius = 25
        
        btnKeepShape.backgroundColor = .clear
        btnKeepShape.layer.cornerRadius = 25
        btnKeepShape.layer.borderWidth = 3
        btnKeepShape.layer.borderColor = borderColor.cgColor
        
        btnIncreaseMuscle.backgroundColor = .clear
        btnIncreaseMuscle.layer.cornerRadius = 25
        btnIncreaseMuscle.layer.borderWidth = 3
        btnIncreaseMuscle.layer.borderColor = borderColor.cgColor
    }
    
    @IBAction func btnKeepShapeAction(_ sender: Any) {
        btnKeepShape.backgroundColor = borderColor
        btnKeepShape.layer.cornerRadius = 25
        
        btnLoseFat.backgroundColor = .clear
        btnLoseFat.layer.cornerRadius = 25
        btnLoseFat.layer.borderWidth = 3
        btnLoseFat.layer.borderColor = borderColor.cgColor
        
        btnIncreaseMuscle.backgroundColor = .clear
        btnIncreaseMuscle.layer.cornerRadius = 25
        btnIncreaseMuscle.layer.borderWidth = 3
        btnIncreaseMuscle.layer.borderColor = borderColor.cgColor
    }
    
    @IBAction func btnIncreaseMuscleAction(_ sender: Any) {
        btnIncreaseMuscle.backgroundColor = borderColor
        btnIncreaseMuscle.layer.cornerRadius = 25
        
        btnKeepShape.backgroundColor = .clear
        btnKeepShape.layer.cornerRadius = 25
        btnKeepShape.layer.borderWidth = 3
        btnKeepShape.layer.borderColor = borderColor.cgColor
        
        btnLoseFat.backgroundColor = .clear
        btnLoseFat.layer.cornerRadius = 25
        btnLoseFat.layer.borderWidth = 3
        btnLoseFat.layer.borderColor = borderColor.cgColor
    }
    
}
