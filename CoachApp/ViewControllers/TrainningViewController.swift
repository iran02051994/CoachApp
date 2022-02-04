//
//  TrainningViewController.swift
//  CoachApp
//
//  Created by Admin on 26/01/22.
//

import UIKit

class TrainningViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrainingCollectionViewCell", for: indexPath) as! TrainingCollectionViewCell
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.progressBar.clipsToBounds = true
        self.progressBar.layer.cornerRadius = 10
    }
}
