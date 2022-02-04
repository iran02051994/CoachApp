//
//  AgeViewController.swift
//  CoachApp
//
//  Created by icarrillog on 12/01/22.
//

import Foundation
import UIKit


class AgeViewController: UIViewController{

    // MARK: - IBOutlets
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var pkrAge: UIPickerView!
    @IBOutlet weak var btnCreatePlan: UIButton!
    
    // MARK: - Variables
    private let borderColor = UIColor(red: 74/255, green: 226/255, blue: 98/255, alpha: 1)
    let data = Array(18...99).map { String($0) }
    let point = ["años"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 1
        pkrAge.dataSource = self
        pkrAge.delegate = self
        pkrAge.setValue(UIColor.white, forKeyPath: "textColor")
        btnCreatePlan.backgroundColor = borderColor
        btnCreatePlan.layer.cornerRadius = 25
    
    }
}

extension AgeViewController: UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return data.count
        }
        return point.count
    }
}

extension AgeViewController: UIPickerViewDelegate{
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return data[row]
        }
        return point[row]
    }
}
