//
//  ExercisesDescriptionViewController.swift
//  CoachApp
//
//  Created by icarrillog on 21/01/22.
//

import UIKit

class ExercisesDescriptionViewController: UIViewController {
    @IBOutlet weak var btnComplete: UIButton!
    @IBOutlet weak var btnMore: UIButton!
    
    private let borderColorC = UIColor(red: 232/255, green: 233/255, blue: 234/255, alpha: 255).cgColor
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnMore.setTitle("", for: .disabled)
        btnComplete.layer.borderColor = borderColorC
        btnComplete.layer.borderWidth = 3.0
        btnComplete.layer.cornerRadius = 21
    }
}
