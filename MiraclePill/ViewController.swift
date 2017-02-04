//
//  ViewController.swift
//  MiraclePill
//
//  Created by vrushal shah on 2/3/17.
//  Copyright © 2017 vrushal shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var text2: UITextField!
    
    @IBOutlet weak var buyBtn: UIButton!
    
    @IBOutlet weak var successIM: UIImageView!
    
    let states=["Gujarat","New York","Alaska","California","Alabama","Mumbai","Surat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource=self
        statePicker.delegate=self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        
        statePicker.isHidden=false
        label1.isHidden=true
        text1.isHidden=true
        label2.isHidden=true
        text2.isHidden=true
        buyBtn.isHidden=true
        
        
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
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        
        statePicker.isHidden=true
        
        label1.isHidden=false
        text1.isHidden=false
        label2.isHidden=false
        text2.isHidden=false
        buyBtn.isHidden=false
    }
    
    
    @IBAction func buyBtnPressed(_ sender: Any) {
        
        successIM.isHidden=false
    }

}

