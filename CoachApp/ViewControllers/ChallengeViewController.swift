//
//  ChallengeViewController.swift
//  CoachApp
//
//  Created by icarrillog on 21/01/22.
//

import UIKit

class ChallengeViewController: UIViewController {
    
    @IBOutlet weak var tblChallenges: UITableView!
    @IBOutlet weak var btnTerminated: UIButton!
    
    let arrChallenges = ["Sentadillas", "Glúteo", "Lagartijas", "Pesas", "Abdominales", "Glúteo", "Lagartijas", "Pesas"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblChallenges.delegate = self
        tblChallenges.dataSource = self
        btnTerminated.layer.cornerRadius = 20
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

extension ChallengeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrChallenges.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblChallenges.dequeueReusableCell(withIdentifier: "customCellChallenge") as! CustomCellChallenge
        
        let challenges = arrChallenges[indexPath.row]
        cell.lblChallenges.text = challenges
        
        return cell
    }
}
