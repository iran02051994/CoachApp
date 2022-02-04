//
//  SignInViewController.swift
//  CoachApp
//
//  Created by icarrillog on 19/01/22.
//

import Foundation
import UIKit


class SignInViewController: UIViewController{

    // MARK: - IBOutlets
    @IBOutlet weak var tbxName: UITextField!
    @IBOutlet weak var tbxEmail: UITextField!
    @IBOutlet weak var tbxPassword: UITextField!
    @IBOutlet weak var lblNameError: UILabel!
    @IBOutlet weak var lblEmailError: UILabel!
    @IBOutlet weak var lblPdwError: UILabel!
    @IBOutlet weak var btnContinue: UIButton!
    
    // MARK: - Variables
       
    override func viewDidLoad() {
        super.viewDidLoad()
        btnContinue.layer.cornerRadius = 25
        lblNameError.isHidden = true
        lblEmailError.isHidden = true
        lblPdwError.isHidden = true
        tbxName.attributedPlaceholder = NSAttributedString(
            string: "Nombre",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        tbxEmail.attributedPlaceholder = NSAttributedString(
            string: "Correo Electrónico",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        tbxPassword.attributedPlaceholder = NSAttributedString(
            string: "Contraseña",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
    }
//    @IBAction func btnContinueAction(_ sender: Any) {
//        if(tbxName.text == "" && tbxEmail.text == "" && tbxPassword.text == ""){
//            lblNameError.isHidden = false
//            lblEmailError.isHidden = false
//            lblPdwError.isHidden = false
//        } else if(tbxEmail.text == "" && tbxPassword.text == ""){
//            lblEmailError.isHidden = false
//            lblPdwError.isHidden = false
//        } else if(tbxName.text == "" && tbxPassword.text == ""){
//            lblNameError.isHidden = false
//            lblPdwError.isHidden = false
//        } else if(tbxName.text == "" && tbxEmail.text == ""){
//            lblNameError.isHidden = false
//            lblEmailError.isHidden = false
//        } else if(tbxName.text == "" ){
//            lblNameError.isHidden = false
//        } else if(tbxEmail.text == ""){
//            lblEmailError.isHidden = false
//        } else if( tbxPassword.text == ""){
//            lblPdwError.isHidden = false
//        } else {
//            let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertController.Style.alert)
//            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
//        }
//    }
}
