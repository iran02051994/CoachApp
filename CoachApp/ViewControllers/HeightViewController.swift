//
//  HeightViewController.swift
//  CoachApp
//
//  Created by icarrillog on 12/01/22.
//

import Foundation
import UIKit


class HeightViewController: UIViewController{
    
    // MARK: - IBOutlets
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var pkrHeight: UIPickerView!
    @IBOutlet weak var btnContinue: UIButton!
    
    // MARK: - Variables
    private let borderColor = UIColor(red: 74/255, green: 226/255, blue: 98/255, alpha: 1)
    let data = Array(0...2).map { String($0) }
    let point = ["."]
    let dataDecimal = Array(01...99).map { String($0) }
    let dataMeasure = ["in","mts"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.9
        pkrHeight.dataSource = self
        pkrHeight.delegate = self
        pkrHeight.setValue(UIColor.white, forKeyPath: "textColor")
        btnContinue.backgroundColor = borderColor
        btnContinue.layer.cornerRadius = 25
    
    }
}


extension HeightViewController: UIPickerViewDataSource{
    
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

extension HeightViewController: UIPickerViewDelegate{
    
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
