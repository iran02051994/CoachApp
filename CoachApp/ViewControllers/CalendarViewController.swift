//
//  CalendarViewController.swift
//  CoachApp
//
//  Created by icarrillog on 21/01/22.
//

import UIKit
import BLTNBoard

class CalendarViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UIViewControllerTransitioningDelegate {
    
    private lazy var boardManager: BLTNItemManager = {
        
        let item = BLTNPageItem(title: "Elige tu nivel de ENTRENAMIENTO")
        item.makeArrangedSubviews()
        return BLTNItemManager(rootItem: item)
    }()
    
    @IBOutlet weak var collectionCalendar: UICollectionView!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var btnStart: UIButton!
   
    
    private var arrDays = ["1","2","3","4","5","6","7","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrDays.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionCalendar.dequeueReusableCell(withReuseIdentifier: "cellCalendar", for: indexPath)  as! CalendarCollectionViewCell
        let cellIndex = indexPath.item
        
        cell.lblCalendarCell.text = arrDays[cellIndex]
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 1
        collectionCalendar?.dataSource = self
        collectionCalendar?.delegate = self
        btnStart.layer.cornerRadius = 21
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnFiltersAction(_ sender: Any) {
        boardManager.showBulletin(above: self)
    }
    
    
}
