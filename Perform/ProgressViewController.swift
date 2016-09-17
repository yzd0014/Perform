//
//  ProgressViewController.swift
//  Perform
//
//  Created by 戴一通 on 9/12/16.
//  Copyright © 2016 ___FULLUSERNAME__. All rights reserved.
//

import UIKit
import Charts

class ProgressViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let miles = [1.2, 3.1, 4.0, 3.5]
        let time = ["1", "2", "3", "4"]
        //setChart(time, values: miles)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var lineChartView: LineChartView!
    func setChart(dataPoints: [String], values: [Double]) {
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Sold")
        let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
        lineChartView.data = lineChartData
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
