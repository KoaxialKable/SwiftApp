//
//  StateSelector.swift
//  PostCard
//
//  Created by David Olsen on 12/4/14.
//  Copyright (c) 2014 Utah State University. All rights reserved.
//

import UIKit
import Foundation

class StateSelector: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerState: UIPickerView!
    @IBOutlet weak var txtAmount: UITextField!
    @IBOutlet weak var lblReport: UILabel!
    @IBOutlet weak var lblOutput: UILabel!
    @IBOutlet weak var lblState1: UILabel!
    @IBOutlet weak var lblState2: UILabel!
    
    var value1: Double = 231.131
    var value2: Double = 231.131
    
    let pickerData = ["AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY"]
    
    
    @IBAction func viewTapped(sender : AnyObject) {
        txtAmount.resignFirstResponder()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblState1.text = "in AL"
        lblState2.text = "in AL"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int)
    {
        if (component == 0)
        {
            lblState1.text = "in \(pickerData[row])"
            switch pickerData[row] {
            case "MS": value1 = 87.6
                break
            case "TN": value1 = 89.4
                break
            case "IN": value1 = 89.9
                break
            case "ID": value1 = 90.7
                break
            case "MI": value1 = 91.7
                break
            case "AL": value1 = 92.0
                break
            case "OK": value1 = 92.1
                break
            case "KY": value1 = 92.3
                break
            case "UT": value1 = 92.3
                break
            case "NE": value1 = 92.4
                break
            case "AR": value1 = 92.5
                break
            case "NM": value1 = 92.6
                break
            case "KS": value1 = 92.7
                break
            case "IA": value1 = 92.8
                break
            case "TX": value1 = 92.9
                break
            case "MO": value1 = 93.1
                break
            case "OH": value1 = 94.4
                break
            case "WY": value1 = 94.4
                break
            case "GA": value1 = 94.4
                break
            case "LA": value1 = 94.7
                break
            case "SC": value1 = 95.2
                break
            case "VA": value1 = 95.8
                break
            case "IL": value1 = 96.1
                break
            case "NC": value1 = 96.5
                break
            case "WI": value1 = 97.3
                break
            case "FL": value1 = 99.3
                break
            case "ND": value1 = 99.8
                break
            case "AZ": value1 = 100.3
                break
            case "MN": value1 = 101.2
                break
            case "SD": value1 = 101.5
                break
            case "CO": value1 = 101.9
                break
            case "WV": value1 = 102.0
                break
            case "PA": value1 = 102.1
                break
            case "MT": value1 = 102.1
                break
            case "WA": value1 = 103.6
                break
            case "DE": value1 = 103.7
                break
            case "NV": value1 = 103.7
                break
            case "ME": value1 = 111.6
                break
            case "MD": value1 = 116.6
                break
            case "NH": value1 = 116.6
                break
            case "VT": value1 = 120.3
                break
            case "RI": value1 = 123.3
                break
            case "MA": value1 = 124.7
                break
            case "OR": value1 = 124.9
                break
            case "NJ": value1 = 125.4
                break
            case "NY": value1 = 131.6
                break
            case "CA": value1 = 131.9
                break
            case "AK": value1 = 133.2
                break
            case "DC": value1 = 138.8
                break
            case "CT": value1 = 145.9
                break
            case "HI": value1 = 163.8
                break
            default: value1 = 0.0
            }
        }
        if (component == 1) {
            lblState2.text = "in \(pickerData[row])"
            switch pickerData[row] {
            case "MS": value2 = 87.6
                break
            case "TN": value2 = 89.4
                break
            case "IN": value2 = 89.9
                break
            case "ID": value2 = 90.7
                break
            case "MI": value2 = 91.7
                break
            case "AL": value2 = 92.0
                break
            case "OK": value2 = 92.1
                break
            case "KY": value2 = 92.3
                break
            case "UT": value2 = 92.3
                break
            case "NE": value2 = 92.4
                break
            case "AR": value2 = 92.5
                break
            case "NM": value2 = 92.6
                break
            case "KS": value2 = 92.7
                break
            case "IA": value2 = 92.8
                break
            case "TX": value2 = 92.9
                break
            case "MO": value2 = 93.1
                break
            case "OH": value2 = 94.4
                break
            case "WY": value2 = 94.4
                break
            case "GA": value2 = 94.4
                break
            case "LA": value2 = 94.7
                break
            case "SC": value2 = 95.2
                break
            case "VA": value2 = 95.8
                break
            case "IL": value2 = 96.1
                break
            case "NC": value2 = 96.5
                break
            case "WI": value2 = 97.3
                break
            case "FL": value2 = 99.3
                break
            case "ND": value2 = 99.8
                break
            case "AZ": value2 = 100.3
                break
            case "MN": value2 = 101.2
                break
            case "SD": value2 = 101.5
                break
            case "CO": value2 = 101.9
                break
            case "WV": value2 = 102.0
                break
            case "PA": value2 = 102.1
                break
            case "MT": value2 = 102.1
                break
            case "WA": value2 = 103.6
                break
            case "DE": value2 = 103.7
                break
            case "NV": value2 = 103.7
                break
            case "ME": value2 = 111.6
                break
            case "MD": value2 = 116.6
                break
            case "NH": value2 = 116.6
                break
            case "VT": value2 = 120.3
                break
            case "RI": value2 = 123.3
                break
            case "MA": value2 = 124.7
                break
            case "OR": value2 = 124.9
                break
            case "NJ": value2 = 125.4
                break
            case "NY": value2 = 131.6
                break
            case "CA": value2 = 131.9
                break
            case "AK": value2 = 133.2
                break
            case "DC": value2 = 138.8
                break
            case "CT": value2 = 145.9
                break
            case "HI": value2 = 163.8
                break
            default: value2 = 0.0
            }
        }
        updateValues()
    }
    
    func compute (num: Double, den: Double) -> Double {
        var result: Double = 0.0
        
        result = (num/den) * (txtAmount.text as NSString).doubleValue
        
        return result
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerData[row]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func txtAmount_edit(sender : UITextField) {
        //println(String(format: "a float number: %.5f", 1.0321))
        updateValues()
    }
    
    @IBAction func buttonTapped(sender : AnyObject) {
        lblReport.text = "Having $\(txtAmount.text) in <left> is the same as having \(((txtAmount.text as NSString).doubleValue) * 15) in <right>"
    }
    
    func updateValues () {
        lblReport.text = "$\(txtAmount.text)"
        var result: String = String(format: "%.2f", compute(value2, den: value1))
        lblOutput.text = result
    }
}
