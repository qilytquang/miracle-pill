//
//  ViewController.swift
//  example_MiraclePill
//
//  Created by quang nguyen on 12/5/16.
//  Copyright © 2016 quang nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryTf: UITextField!
    @IBOutlet weak var zipcodeLbl: UILabel!
    @IBOutlet weak var zipcodeTf: UITextField!
    
    @IBOutlet weak var buyNowBtn: UIButton!
    
    
    let states = ["New York", "Nghe An", "California", "Da Nang", "Alaska", "Tokyo"]
    
    func setItemsHidden(_ isHidden: Bool) {
        countryLbl.isHidden = isHidden
        countryTf.isHidden = isHidden
        zipcodeLbl.isHidden = isHidden
        zipcodeTf.isHidden = isHidden
        buyNowBtn.isHidden = isHidden
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
        setItemsHidden(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        setItemsHidden(true)
    }
    
    @IBAction func buyBtnPressed(_ sender: AnyObject) {
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState())
        statePicker.isHidden = true
        setItemsHidden(false)
    }
}

