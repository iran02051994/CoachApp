//
//  ProfileViewController.swift
//  CoachApp
//
//  Created by Admin on 26/01/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var logOutBtn: UIButton!
    
    private let borderColor = UIColor(red: 74/255, green: 226/255, blue: 98/255, alpha: 1).cgColor
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgProfile.layer.cornerRadius = imgProfile.frame.height/2
        logOutBtn.layer.borderColor = borderColor
        logOutBtn.layer.borderWidth = 2.0
        logOutBtn.layer.cornerRadius = 17
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
