//
//  ViewController.swift
//  PostCard
//
//  Created by David Olsen on 12/3/14.
//  Copyright (c) 2014 Utah State University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtRate: UITextField!
    @IBOutlet weak var txtHours: UITextField!
    @IBOutlet weak var lblGrossTotal: UILabel!
    @IBOutlet weak var txtFood: UITextField!
    @IBOutlet weak var txtOther: UITextField!
    @IBOutlet weak var lblNet: UILabel!
    @IBOutlet weak var panel2: UIView!
    
    @IBAction func txtHours_Edit(sender: AnyObject) {
        updateGross()
    }
    
    @IBAction func txtRate_Edit(sender: AnyObject) {
        updateGross()
    }
    
    @IBAction func viewTapped(sender : AnyObject) {
        txtRate.resignFirstResponder()
        txtHours.resignFirstResponder()
        txtFood.resignFirstResponder()
        txtOther.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        panel2.hidden = true
        lblGrossTotal.text = ""
        lblNet.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func txtFood_Edit(sender: AnyObject) {
        updateNet()
    }
    
    @IBAction func txtOther_Edit(sender: AnyObject) {
        updateNet()
    }
    
    
    
    func updateGross() {
        
        if (txtRate.text != "" && txtHours.text != "") {
            var sRate = NSString(string: txtRate.text)
            var sHours = NSString(string: txtHours.text)
            var rate  = sRate.doubleValue as Double
            var hours = sHours.doubleValue as Double
            lblGrossTotal.text = "Gross pay: \(rate * hours)"
            panel2.hidden = false
            updateNet()
        }
        
    }
    
    func updateNet() {
        var gross = ((txtRate.text as NSString).doubleValue * (txtHours.text as NSString).doubleValue)
        var net = gross * 0.864
        
        if (txtFood.text != "") {
            var food = (txtFood.text as NSString).doubleValue
            net -= food
        }
        if (txtOther.text != "") {
            var other = (txtOther.text as NSString).doubleValue
            net -= other
        }
        
        lblNet.text = "Net remaining: \(net)"
    }
    
    
    
    
}

