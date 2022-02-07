//
//  AccessWithViewController.swift
//  CoachApp
//
//  Created by icarrillog on 18/01/22.
//

import Foundation
import UIKit

class AccessWithViewController: UIViewController{

    // MARK: - IBOutlets
    @IBOutlet weak var btnEmail: UIButton!
    @IBOutlet weak var btnApple: UIButton!
    @IBOutlet weak var btnFacebook: UIButton!
    @IBOutlet weak var btnLogIn: UIButton!
    
    // MARK: - Variables
       
    override func viewDidLoad() {
        super.viewDidLoad()
        btnEmail.layer.cornerRadius = 25
        btnApple.layer.cornerRadius = 25
        btnFacebook.layer.cornerRadius = 25
        
    }
}
