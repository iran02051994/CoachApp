//
//  ActualWeightViewController.swift
//  CoachApp
//
//  Created by icarrillog on 11/01/22.
//

import Foundation
import UIKit

class ActualWeightViewController: UIViewController{
    
    // MARK: - IBOutlets
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var pkrWeight: UIPickerView!
    @IBOutlet weak var btnContinue: UIButton!
    
    // MARK: - Variables
    private let borderColor = UIColor(red: 74/255, green: 226/255, blue: 98/255, alpha: 1)
    let data = Array(42...100).map { String($0) }
    let point = ["."]
    let dataDecimal = Array(0...9).map { String($0) }
    let dataMeasure = ["Lb","Kg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.60
        pkrWeight.dataSource = self
        pkrWeight.delegate = self
        pkrWeight.setValue(UIColor.white, forKeyPath: "textColor")
        btnContinue.backgroundColor = borderColor
        btnContinue.layer.cornerRadius = 25
    
    }
}

extension ActualWeightViewController: UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 4
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return data.count
        } else if component == 1{
            return point.count
        } else if component == 2{
            return dataDecimal.count
        }
        return dataMeasure.count
    }
}

extension ActualWeightViewController: UIPickerViewDelegate{
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return data[row]
        } else if component == 1{
            return point[row]
        } else if component == 2{
            return dataDecimal[row]
        }
        return dataMeasure[row]
    }
}
