//
//  ChartViewController.swift
//  CoachApp
//
//  Created by Admin on 04/02/22.
//

import UIKit
import Charts

class ChartViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, ChartViewDelegate {
    
    let values: [ChartDataEntry] = [
        ChartDataEntry(x: 0.0, y: 10.0),
        ChartDataEntry(x: 1.0, y: 5.0),
        ChartDataEntry(x: 2.0, y: 1.0),
        ChartDataEntry(x: 3.0, y: 6.0),
        ChartDataEntry(x: 4.0, y: 9.0),
        ChartDataEntry(x: 5.0, y: 14.0),
        ChartDataEntry(x: 6.0, y: 13.0),
        ChartDataEntry(x: 7.0, y: 12.0),
        ChartDataEntry(x: 8.0, y: 1.0),
        ChartDataEntry(x: 9.0, y: 4.0),
        ChartDataEntry(x: 10.0, y: 1.0),
        ChartDataEntry(x: 11.0, y: 15.0)
    ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        totalSquares.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "calCell", for: indexPath) as! CalendarCell
        
        cell.dayOfMonth.text = totalSquares[indexPath.item]
        
        return cell
    }
    

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var lblMonth: UILabel!
    @IBOutlet weak var vStack: UIScrollView!
    @IBOutlet weak var vChart: LineChartView!
    
    var selectedDate = Date()
    var totalSquares = [String]()
    
    
    private let borderColor = UIColor(red: 74/255, green: 226/255, blue: 98/255, alpha: 1).cgColor
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vChart.center = view.center
        vChart.frame = CGRect(x: 0, y:0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        setData()
        setCellsView()
        setMonthView()
    }
    
    func setCellsView(){
        let width = (collectionView.frame.size.width - 2) / 8
        let height = (collectionView.frame.size.height - 2) / 8
        
        let flowLayout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        flowLayout.itemSize = CGSize(width: width, height: height)
    }
    
    func setMonthView(){
        totalSquares.removeAll()
        
        let daysInMonth = CalendarHelper().daysInMonth(date: selectedDate)
        let firstDayOfMonth = CalendarHelper().firstOfMonth(date: selectedDate)
        let startingSpaces = CalendarHelper().weekDay(date: firstDayOfMonth)
        
        var count: Int = 1
        
        while(count <= 42){
            if(count <= startingSpaces || count - startingSpaces > daysInMonth){
                totalSquares.append("")
            } else {
                totalSquares.append(String(count - startingSpaces))
            }
            count += 1
        }
        lblMonth.text = CalendarHelper().monthString(date: selectedDate) + " " + CalendarHelper().yearString(date: selectedDate)
        collectionView.reloadData()
    }
    
    func setData(){
        let set = LineChartDataSet(entries: values, label: "Entrenamiento")
        let lineColor = [NSUIColor(cgColor: borderColor)]
        let holeColor = NSUIColor(cgColor: borderColor)
        set.circleHoleColor = holeColor
        set.circleColors = lineColor
        set.colors = lineColor
        let data = LineChartData(dataSet: set)
        vChart.data = data
    }
    @IBAction func btnPrevAction(_ sender: Any) {
        selectedDate = CalendarHelper().minusMonth(date: selectedDate)
        setMonthView()
    }
    
    @IBAction func btnNextAction(_ sender: Any) {
        selectedDate = CalendarHelper().plusMonth(date: selectedDate)
        setMonthView()
    }
    
    override open var shouldAutorotate: Bool{
        return false
    }
}
