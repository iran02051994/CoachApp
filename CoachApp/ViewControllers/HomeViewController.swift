//
//  HomeViewController.swift
//  CoachApp
//
//  Created by icarrillog on 20/01/22.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var lblPerfomance: UILabel!
    @IBOutlet weak var lblChallenge: UILabel!
    @IBOutlet weak var tblExercises: UITableView!
    
    private let borderColorP = UIColor(red: 74/255, green: 226/255, blue: 98/255, alpha: 1).cgColor
    private let borderColorC = UIColor(red: 232/255, green: 233/255, blue: 234/255, alpha: 255).cgColor
    let arrExercises = ["SENTADILLAS", "GLÚTEO", "LAGARTIJAS", "PESAS", "ABDOMINALES", "GLÚTEO", "LAGARTIJAS", "PESAS"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblPerfomance.layer.borderColor = borderColorP
        lblPerfomance.layer.borderWidth = 3.0
        lblPerfomance.layer.cornerRadius = 21
        lblChallenge.layer.borderColor = borderColorC
        lblChallenge.layer.borderWidth = 3.0
        lblChallenge.layer.cornerRadius = 15
        tblExercises.delegate = self
        tblExercises.dataSource = self
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrExercises.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblExercises.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        
        let exercises = arrExercises[indexPath.row]
        cell.lblExercises.text = exercises
        
        return cell
    }
}
