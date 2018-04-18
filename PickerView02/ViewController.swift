//
//  ViewController.swift
//  PickerView02
//
//  Created by D7703_04 on 2018. 4. 18..
//  Copyright © 2018년 D7703_04. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var MyLabel: UILabel!
    @IBOutlet weak var yourLabel: UILabel!
    
    var color = ["WHITE", "GREEN", "RED"]
    var number = ["1", "2", "3", "4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // delegate와 ViewController 연결
        
        myPickerView.delegate = self
        myPickerView.dataSource = self
    }


    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 3
        } else {
            return 4
        }
        
        
    }

    //UIPickerViewDelegate method
      func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
        {
            
            if component == 0 {
                return color[row]
            } else {
                return number[row]
    }
}
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if component == 0 {
            MyLabel.text = color[row]
        } else {
            yourLabel.text = number[row] }
    }
}


