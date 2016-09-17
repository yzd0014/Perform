//
//  SessionViewController.swift
//  Perform
//
//  Created by 戴一通 on 9/12/16.
//  Copyright © 2016 ___FULLUSERNAME__. All rights reserved.
//

import UIKit
import Charts
class SessionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let sessions = ["Overhead", "Backhand", "Forehand", "Serve"]
        let percent = [25.0, 16.0, 39.0, 20.0]
        setChart(sessions, values: percent)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var graphDescription: UILabel!

    @IBOutlet weak var pieChartView: PieChartView!
    
    func setChart(dataPoints: [String], values: [Double]) {
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        let pieChartDataSet = PieChartDataSet(yVals: dataEntries, label: "")
        pieChartDataSet.selectionShift = 10
        let pieChartData = PieChartData(xVals: dataPoints, dataSet: pieChartDataSet)
        pieChartView.data = pieChartData
        
        let black = UIColor(red: 0/255.0, green: 0/255, blue: 0/255.0, alpha: 1.0)
        let red = UIColor(red: 236/255.0, green: 34/255, blue: 38/255.0, alpha: 1.0)
        let gray = UIColor(red: 146/255.0, green: 148/255, blue: 151/255.0, alpha: 1.0)
        let blue = UIColor(red: 94/255.0, green: 184/255, blue: 213/255.0, alpha: 1.0)
        var colors: [UIColor] = [gray, red, black, blue]
        pieChartDataSet.colors = colors
        pieChartView.drawHoleEnabled = false
        pieChartView.rotationEnabled = false
        pieChartView.descriptionText = ""
        pieChartView.drawSliceTextEnabled = false
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        var destVC = segue.destinationViewController as! SessionDetailViewController
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    */

}
