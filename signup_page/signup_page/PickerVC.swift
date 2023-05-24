//
//  PickerVC.swift
//  signup_page
//
//  Created by vidhi jayswal on 05/02/19.
//  Copyright © 2019 vidhi jayswal. All rights reserved.
//

import UIKit

class PickerVC: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate
{
    
    //-----------------------
    //MARK: Outlets
    //-----------------------
    
    @IBOutlet weak var lbllabel: UILabel!
    
    @IBOutlet weak var pickerview: UIPickerView!
    
    //-----------------------
    //MARK: Declaration
    //-----------------------
    let fruits = ["mango","banana","chickoo","pineapple","Grapes","apple"]
    
    
    //----------------------
    //MARK: View Life Cycle
    //----------------------
    

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fruits[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return fruits.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lbllabel.text = fruits[row]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
