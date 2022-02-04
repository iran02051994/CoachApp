//
//  MainViewController.swift
//  CoachApp
//
//  Created by icarrillog on 10/01/22.
//

import Foundation
import UIKit

class MainViewController: UIViewController{
    // MARK: - IBOutlets
    @IBOutlet weak var btnStart: UIButton!
    @IBOutlet weak var btnLogIn: UIButton!
    
    // MARK: - V A R I A B L E S
    private let borderColor = UIColor(red: 74/255, green: 226/255, blue: 98/255, alpha: 1)
    
    override func viewDidLoad() {
        btnStart.setTitleColor(UIColor.black, for: .normal)
        btnStart.backgroundColor = borderColor
        btnStart.layer.cornerRadius = 25
        
        btnLogIn.setTitleColor(borderColor, for: .normal)
    }
}
